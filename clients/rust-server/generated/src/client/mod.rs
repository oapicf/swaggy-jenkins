#![allow(unused_extern_crates)]
extern crate tokio_core;
extern crate native_tls;
extern crate hyper_tls;
extern crate openssl;
extern crate mime;
extern crate chrono;
extern crate url;



use hyper;
use hyper::header::{Headers, ContentType};
use hyper::Uri;
use self::url::percent_encoding::{utf8_percent_encode, PATH_SEGMENT_ENCODE_SET, QUERY_ENCODE_SET};
use futures;
use futures::{Future, Stream};
use futures::{future, stream};
use self::tokio_core::reactor::Handle;
use std::borrow::Cow;
use std::io::{Read, Error, ErrorKind};
use std::error;
use std::fmt;
use std::path::Path;
use std::sync::Arc;
use std::str;
use std::str::FromStr;

use mimetypes;

use serde_json;


#[allow(unused_imports)]
use std::collections::{HashMap, BTreeMap};
#[allow(unused_imports)]
use swagger;

use swagger::{ApiError, XSpanId, XSpanIdString, Has, AuthData};

use {Api,
     GetCrumbResponse,
     DeletePipelineQueueItemResponse,
     GetAuthenticatedUserResponse,
     GetClassesResponse,
     GetJsonWebKeyResponse,
     GetJsonWebTokenResponse,
     GetOrganisationResponse,
     GetOrganisationsResponse,
     GetPipelineResponse,
     GetPipelineActivitiesResponse,
     GetPipelineBranchResponse,
     GetPipelineBranchRunResponse,
     GetPipelineBranchesResponse,
     GetPipelineFolderResponse,
     GetPipelineFolderPipelineResponse,
     GetPipelineQueueResponse,
     GetPipelineRunResponse,
     GetPipelineRunLogResponse,
     GetPipelineRunNodeResponse,
     GetPipelineRunNodeStepResponse,
     GetPipelineRunNodeStepLogResponse,
     GetPipelineRunNodeStepsResponse,
     GetPipelineRunNodesResponse,
     GetPipelineRunsResponse,
     GetPipelinesResponse,
     GetSCMResponse,
     GetSCMOrganisationRepositoriesResponse,
     GetSCMOrganisationRepositoryResponse,
     GetSCMOrganisationsResponse,
     GetUserResponse,
     GetUserFavoritesResponse,
     GetUsersResponse,
     PostPipelineRunResponse,
     PostPipelineRunsResponse,
     PutPipelineFavoriteResponse,
     PutPipelineRunResponse,
     SearchResponse,
     SearchClassesResponse,
     GetComputerResponse,
     GetJenkinsResponse,
     GetJobResponse,
     GetJobConfigResponse,
     GetJobLastBuildResponse,
     GetJobProgressiveTextResponse,
     GetQueueResponse,
     GetQueueItemResponse,
     GetViewResponse,
     GetViewConfigResponse,
     HeadJenkinsResponse,
     PostCreateItemResponse,
     PostCreateViewResponse,
     PostJobBuildResponse,
     PostJobConfigResponse,
     PostJobDeleteResponse,
     PostJobDisableResponse,
     PostJobEnableResponse,
     PostJobLastBuildStopResponse,
     PostViewConfigResponse
     };
use models;

define_encode_set! {
    /// This encode set is used for object IDs
    ///
    /// Aside from the special characters defined in the `PATH_SEGMENT_ENCODE_SET`,
    /// the vertical bar (|) is encoded.
    pub ID_ENCODE_SET = [PATH_SEGMENT_ENCODE_SET] | {'|'}
}

/// Convert input into a base path, e.g. "http://example:123". Also checks the scheme as it goes.
fn into_base_path(input: &str, correct_scheme: Option<&'static str>) -> Result<String, ClientInitError> {
    // First convert to Uri, since a base path is a subset of Uri.
    let uri = Uri::from_str(input)?;

    let scheme = uri.scheme().ok_or(ClientInitError::InvalidScheme)?;

    // Check the scheme if necessary
    if let Some(correct_scheme) = correct_scheme {
        if scheme != correct_scheme {
            return Err(ClientInitError::InvalidScheme);
        }
    }

    let host = uri.host().ok_or_else(|| ClientInitError::MissingHost)?;
    let port = uri.port().map(|x| format!(":{}", x)).unwrap_or_default();
    Ok(format!("{}://{}{}", scheme, host, port))
}

/// A client that implements the API by making HTTP calls out to a server.
pub struct Client<F> where
  F: Future<Item=hyper::Response, Error=hyper::Error> + 'static {
    client_service: Arc<Box<hyper::client::Service<Request=hyper::Request<hyper::Body>, Response=hyper::Response, Error=hyper::Error, Future=F>>>,
    base_path: String,
}

impl<F> fmt::Debug for Client<F> where
   F: Future<Item=hyper::Response, Error=hyper::Error>  + 'static {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "Client {{ base_path: {} }}", self.base_path)
    }
}

impl<F> Clone for Client<F> where
   F: Future<Item=hyper::Response, Error=hyper::Error>  + 'static {
    fn clone(&self) -> Self {
        Client {
            client_service: self.client_service.clone(),
            base_path: self.base_path.clone()
        }
    }
}

impl Client<hyper::client::FutureResponse> {

    /// Create an HTTP client.
    ///
    /// # Arguments
    /// * `handle` - tokio reactor handle to use for execution
    /// * `base_path` - base path of the client API, i.e. "www.my-api-implementation.com"
    pub fn try_new_http(handle: Handle, base_path: &str) -> Result<Client<hyper::client::FutureResponse>, ClientInitError> {
        let http_connector = swagger::http_connector();
        Self::try_new_with_connector::<hyper::client::HttpConnector>(
            handle,
            base_path,
            Some("http"),
            http_connector,
        )
    }

    /// Create a client with a TLS connection to the server.
    ///
    /// # Arguments
    /// * `handle` - tokio reactor handle to use for execution
    /// * `base_path` - base path of the client API, i.e. "www.my-api-implementation.com"
    /// * `ca_certificate` - Path to CA certificate used to authenticate the server
    pub fn try_new_https<CA>(
        handle: Handle,
        base_path: &str,
        ca_certificate: CA,
    ) -> Result<Client<hyper::client::FutureResponse>, ClientInitError>
    where
        CA: AsRef<Path>,
    {
        let https_connector = swagger::https_connector(ca_certificate);
        Self::try_new_with_connector::<hyper_tls::HttpsConnector<hyper::client::HttpConnector>>(
            handle,
            base_path,
            Some("https"),
            https_connector,
        )
    }

    /// Create a client with a mutually authenticated TLS connection to the server.
    ///
    /// # Arguments
    /// * `handle` - tokio reactor handle to use for execution
    /// * `base_path` - base path of the client API, i.e. "www.my-api-implementation.com"
    /// * `ca_certificate` - Path to CA certificate used to authenticate the server
    /// * `client_key` - Path to the client private key
    /// * `client_certificate` - Path to the client's public certificate associated with the private key
    pub fn try_new_https_mutual<CA, K, C>(
        handle: Handle,
        base_path: &str,
        ca_certificate: CA,
        client_key: K,
        client_certificate: C,
    ) -> Result<Client<hyper::client::FutureResponse>, ClientInitError>
    where
        CA: AsRef<Path>,
        K: AsRef<Path>,
        C: AsRef<Path>,
    {
        let https_connector =
            swagger::https_mutual_connector(ca_certificate, client_key, client_certificate);
        Self::try_new_with_connector::<hyper_tls::HttpsConnector<hyper::client::HttpConnector>>(
            handle,
            base_path,
            Some("https"),
            https_connector,
        )
    }

    /// Create a client with a custom implementation of hyper::client::Connect.
    ///
    /// Intended for use with custom implementations of connect for e.g. protocol logging
    /// or similar functionality which requires wrapping the transport layer. When wrapping a TCP connection,
    /// this function should be used in conjunction with
    /// `swagger::{http_connector, https_connector, https_mutual_connector}`.
    ///
    /// For ordinary tcp connections, prefer the use of `try_new_http`, `try_new_https`
    /// and `try_new_https_mutual`, to avoid introducing a dependency on the underlying transport layer.
    ///
    /// # Arguments
    ///
    /// * `handle` - tokio reactor handle to use for execution
    /// * `base_path` - base path of the client API, i.e. "www.my-api-implementation.com"
    /// * `protocol` - Which protocol to use when constructing the request url, e.g. `Some("http")`
    /// * `connector_fn` - Function which returns an implementation of `hyper::client::Connect`
    pub fn try_new_with_connector<C>(
        handle: Handle,
        base_path: &str,
        protocol: Option<&'static str>,
        connector_fn: Box<Fn(&Handle) -> C + Send + Sync>,
    ) -> Result<Client<hyper::client::FutureResponse>, ClientInitError>
    where
        C: hyper::client::Connect + hyper::client::Service,
    {
        let connector = connector_fn(&handle);
        let client_service = Box::new(hyper::Client::configure().connector(connector).build(
            &handle,
        ));

        Ok(Client {
            client_service: Arc::new(client_service),
            base_path: into_base_path(base_path, protocol)?,
        })
    }

    /// Constructor for creating a `Client` by passing in a pre-made `hyper` client.
    ///
    /// One should avoid relying on this function if possible, since it adds a dependency on the underlying transport
    /// implementation, which it would be better to abstract away. Therefore, using this function may lead to a loss of
    /// code generality, which may make it harder to move the application to a serverless environment, for example.
    ///
    /// The reason for this function's existence is to support legacy test code, which did mocking at the hyper layer.
    /// This is not a recommended way to write new tests. If other reasons are found for using this function, they
    /// should be mentioned here.
    #[deprecated(note="Use try_new_with_client_service instead")]
    pub fn try_new_with_hyper_client(
        hyper_client: Arc<Box<hyper::client::Service<Request=hyper::Request<hyper::Body>, Response=hyper::Response, Error=hyper::Error, Future=hyper::client::FutureResponse>>>,
        handle: Handle,
        base_path: &str
    ) -> Result<Client<hyper::client::FutureResponse>, ClientInitError>
    {
        Ok(Client {
            client_service: hyper_client,
            base_path: into_base_path(base_path, None)?,
        })
    }
}

impl<F> Client<F> where
    F: Future<Item=hyper::Response, Error=hyper::Error>  + 'static
{
    /// Constructor for creating a `Client` by passing in a pre-made `hyper` client Service.
    ///
    /// This allows adding custom wrappers around the underlying transport, for example for logging.
    pub fn try_new_with_client_service(client_service: Arc<Box<hyper::client::Service<Request=hyper::Request<hyper::Body>, Response=hyper::Response, Error=hyper::Error, Future=F>>>,
                                       handle: Handle,
                                       base_path: &str)
                                    -> Result<Client<F>, ClientInitError>
    {
        Ok(Client {
            client_service: client_service,
            base_path: into_base_path(base_path, None)?,
        })
    }
}

impl<F, C> Api<C> for Client<F> where
    F: Future<Item=hyper::Response, Error=hyper::Error>  + 'static,
    C: Has<XSpanIdString> + Has<Option<AuthData>>{

    fn get_crumb(&self, context: &C) -> Box<Future<Item=GetCrumbResponse, Error=ApiError>> {


        let uri = format!(
            "{}//crumbIssuer/api/json",
            self.base_path
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::DefaultCrumbIssuer>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetCrumbResponse::SuccessfullyRetrievedCSRFProtectionToken(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetCrumbResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetCrumbResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn delete_pipeline_queue_item(&self, param_organization: String, param_pipeline: String, param_queue: String, context: &C) -> Box<Future<Item=DeletePipelineQueueItemResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), pipeline=utf8_percent_encode(&param_pipeline.to_string(), ID_ENCODE_SET), queue=utf8_percent_encode(&param_queue.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Delete, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            DeletePipelineQueueItemResponse::SuccessfullyDeletedQueueItem
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            DeletePipelineQueueItemResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            DeletePipelineQueueItemResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_authenticated_user(&self, param_organization: String, context: &C) -> Box<Future<Item=GetAuthenticatedUserResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/user/",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::User>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetAuthenticatedUserResponse::SuccessfullyRetrievedAuthenticatedUserDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetAuthenticatedUserResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetAuthenticatedUserResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_classes(&self, param_class: String, context: &C) -> Box<Future<Item=GetClassesResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/classes/{class}",
            self.base_path, class=utf8_percent_encode(&param_class.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<String>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetClassesResponse::SuccessfullyRetrievedClassNames(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetClassesResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetClassesResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_json_web_key(&self, param_key: i32, context: &C) -> Box<Future<Item=GetJsonWebKeyResponse, Error=ApiError>> {


        let uri = format!(
            "{}//jwt-auth/jwks/{key}",
            self.base_path, key=utf8_percent_encode(&param_key.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));


        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<String>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetJsonWebKeyResponse::SuccessfullyRetrievedJWTToken(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetJsonWebKeyResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetJsonWebKeyResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_json_web_token(&self, param_expiry_time_in_mins: Option<i32>, param_max_expiry_time_in_mins: Option<i32>, context: &C) -> Box<Future<Item=GetJsonWebTokenResponse, Error=ApiError>> {

        // Query parameters
        let query_expiry_time_in_mins = param_expiry_time_in_mins.map_or_else(String::new, |query| format!("expiryTimeInMins={expiry_time_in_mins}&", expiry_time_in_mins=query.to_string()));
        let query_max_expiry_time_in_mins = param_max_expiry_time_in_mins.map_or_else(String::new, |query| format!("maxExpiryTimeInMins={max_expiry_time_in_mins}&", max_expiry_time_in_mins=query.to_string()));


        let uri = format!(
            "{}//jwt-auth/token?{expiry_time_in_mins}{max_expiry_time_in_mins}",
            self.base_path,
            expiry_time_in_mins=utf8_percent_encode(&query_expiry_time_in_mins, QUERY_ENCODE_SET),
            max_expiry_time_in_mins=utf8_percent_encode(&query_max_expiry_time_in_mins, QUERY_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));


        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<String>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetJsonWebTokenResponse::SuccessfullyRetrievedJWTToken(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetJsonWebTokenResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetJsonWebTokenResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_organisation(&self, param_organization: String, context: &C) -> Box<Future<Item=GetOrganisationResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::Organisation>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetOrganisationResponse::SuccessfullyRetrievedPipelineDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetOrganisationResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetOrganisationResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                404 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetOrganisationResponse::PipelineCannotBeFoundOnJenkinsInstance
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_organisations(&self, context: &C) -> Box<Future<Item=GetOrganisationsResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/",
            self.base_path
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::Organisations>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetOrganisationsResponse::SuccessfullyRetrievedPipelinesDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetOrganisationsResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetOrganisationsResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_pipeline(&self, param_organization: String, param_pipeline: String, context: &C) -> Box<Future<Item=GetPipelineResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/{pipeline}",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), pipeline=utf8_percent_encode(&param_pipeline.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::Pipeline>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetPipelineResponse::SuccessfullyRetrievedPipelineDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                404 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineResponse::PipelineCannotBeFoundOnJenkinsInstance
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_pipeline_activities(&self, param_organization: String, param_pipeline: String, context: &C) -> Box<Future<Item=GetPipelineActivitiesResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/{pipeline}/activities",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), pipeline=utf8_percent_encode(&param_pipeline.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::PipelineActivities>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetPipelineActivitiesResponse::SuccessfullyRetrievedAllActivitiesDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineActivitiesResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineActivitiesResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_pipeline_branch(&self, param_organization: String, param_pipeline: String, param_branch: String, context: &C) -> Box<Future<Item=GetPipelineBranchResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), pipeline=utf8_percent_encode(&param_pipeline.to_string(), ID_ENCODE_SET), branch=utf8_percent_encode(&param_branch.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::BranchImpl>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetPipelineBranchResponse::SuccessfullyRetrievedBranchDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineBranchResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineBranchResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_pipeline_branch_run(&self, param_organization: String, param_pipeline: String, param_branch: String, param_run: String, context: &C) -> Box<Future<Item=GetPipelineBranchRunResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), pipeline=utf8_percent_encode(&param_pipeline.to_string(), ID_ENCODE_SET), branch=utf8_percent_encode(&param_branch.to_string(), ID_ENCODE_SET), run=utf8_percent_encode(&param_run.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::PipelineRun>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetPipelineBranchRunResponse::SuccessfullyRetrievedRunDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineBranchRunResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineBranchRunResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_pipeline_branches(&self, param_organization: String, param_pipeline: String, context: &C) -> Box<Future<Item=GetPipelineBranchesResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/{pipeline}/branches",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), pipeline=utf8_percent_encode(&param_pipeline.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::MultibranchPipeline>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetPipelineBranchesResponse::SuccessfullyRetrievedAllBranchesDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineBranchesResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineBranchesResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_pipeline_folder(&self, param_organization: String, param_folder: String, context: &C) -> Box<Future<Item=GetPipelineFolderResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/{folder}/",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), folder=utf8_percent_encode(&param_folder.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::PipelineFolderImpl>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetPipelineFolderResponse::SuccessfullyRetrievedFolderDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineFolderResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineFolderResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_pipeline_folder_pipeline(&self, param_organization: String, param_pipeline: String, param_folder: String, context: &C) -> Box<Future<Item=GetPipelineFolderPipelineResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), pipeline=utf8_percent_encode(&param_pipeline.to_string(), ID_ENCODE_SET), folder=utf8_percent_encode(&param_folder.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::PipelineImpl>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetPipelineFolderPipelineResponse::SuccessfullyRetrievedPipelineDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineFolderPipelineResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineFolderPipelineResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_pipeline_queue(&self, param_organization: String, param_pipeline: String, context: &C) -> Box<Future<Item=GetPipelineQueueResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/{pipeline}/queue",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), pipeline=utf8_percent_encode(&param_pipeline.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::PipelineQueue>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetPipelineQueueResponse::SuccessfullyRetrievedQueueDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineQueueResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineQueueResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_pipeline_run(&self, param_organization: String, param_pipeline: String, param_run: String, context: &C) -> Box<Future<Item=GetPipelineRunResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), pipeline=utf8_percent_encode(&param_pipeline.to_string(), ID_ENCODE_SET), run=utf8_percent_encode(&param_run.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::PipelineRun>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetPipelineRunResponse::SuccessfullyRetrievedRunDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineRunResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineRunResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_pipeline_run_log(&self, param_organization: String, param_pipeline: String, param_run: String, param_start: Option<i32>, param_download: Option<bool>, context: &C) -> Box<Future<Item=GetPipelineRunLogResponse, Error=ApiError>> {

        // Query parameters
        let query_start = param_start.map_or_else(String::new, |query| format!("start={start}&", start=query.to_string()));
        let query_download = param_download.map_or_else(String::new, |query| format!("download={download}&", download=query.to_string()));


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log?{start}{download}",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), pipeline=utf8_percent_encode(&param_pipeline.to_string(), ID_ENCODE_SET), run=utf8_percent_encode(&param_run.to_string(), ID_ENCODE_SET),
            start=utf8_percent_encode(&query_start, QUERY_ENCODE_SET),
            download=utf8_percent_encode(&query_download, QUERY_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<String>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetPipelineRunLogResponse::SuccessfullyRetrievedPipelineRunLog(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineRunLogResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineRunLogResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_pipeline_run_node(&self, param_organization: String, param_pipeline: String, param_run: String, param_node: String, context: &C) -> Box<Future<Item=GetPipelineRunNodeResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), pipeline=utf8_percent_encode(&param_pipeline.to_string(), ID_ENCODE_SET), run=utf8_percent_encode(&param_run.to_string(), ID_ENCODE_SET), node=utf8_percent_encode(&param_node.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::PipelineRunNode>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetPipelineRunNodeResponse::SuccessfullyRetrievedRunNodeDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineRunNodeResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineRunNodeResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_pipeline_run_node_step(&self, param_organization: String, param_pipeline: String, param_run: String, param_node: String, param_step: String, context: &C) -> Box<Future<Item=GetPipelineRunNodeStepResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), pipeline=utf8_percent_encode(&param_pipeline.to_string(), ID_ENCODE_SET), run=utf8_percent_encode(&param_run.to_string(), ID_ENCODE_SET), node=utf8_percent_encode(&param_node.to_string(), ID_ENCODE_SET), step=utf8_percent_encode(&param_step.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::PipelineStepImpl>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetPipelineRunNodeStepResponse::SuccessfullyRetrievedRunNodeStepDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineRunNodeStepResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineRunNodeStepResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_pipeline_run_node_step_log(&self, param_organization: String, param_pipeline: String, param_run: String, param_node: String, param_step: String, context: &C) -> Box<Future<Item=GetPipelineRunNodeStepLogResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), pipeline=utf8_percent_encode(&param_pipeline.to_string(), ID_ENCODE_SET), run=utf8_percent_encode(&param_run.to_string(), ID_ENCODE_SET), node=utf8_percent_encode(&param_node.to_string(), ID_ENCODE_SET), step=utf8_percent_encode(&param_step.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<String>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetPipelineRunNodeStepLogResponse::SuccessfullyRetrievedPipelineRunNodeStepLog(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineRunNodeStepLogResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineRunNodeStepLogResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_pipeline_run_node_steps(&self, param_organization: String, param_pipeline: String, param_run: String, param_node: String, context: &C) -> Box<Future<Item=GetPipelineRunNodeStepsResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), pipeline=utf8_percent_encode(&param_pipeline.to_string(), ID_ENCODE_SET), run=utf8_percent_encode(&param_run.to_string(), ID_ENCODE_SET), node=utf8_percent_encode(&param_node.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::PipelineRunNodeSteps>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetPipelineRunNodeStepsResponse::SuccessfullyRetrievedRunNodeStepsDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineRunNodeStepsResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineRunNodeStepsResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_pipeline_run_nodes(&self, param_organization: String, param_pipeline: String, param_run: String, context: &C) -> Box<Future<Item=GetPipelineRunNodesResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), pipeline=utf8_percent_encode(&param_pipeline.to_string(), ID_ENCODE_SET), run=utf8_percent_encode(&param_run.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::PipelineRunNodes>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetPipelineRunNodesResponse::SuccessfullyRetrievedRunNodesDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineRunNodesResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineRunNodesResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_pipeline_runs(&self, param_organization: String, param_pipeline: String, context: &C) -> Box<Future<Item=GetPipelineRunsResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), pipeline=utf8_percent_encode(&param_pipeline.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::PipelineRuns>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetPipelineRunsResponse::SuccessfullyRetrievedRunsDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineRunsResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelineRunsResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_pipelines(&self, param_organization: String, context: &C) -> Box<Future<Item=GetPipelinesResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::Pipelines>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetPipelinesResponse::SuccessfullyRetrievedPipelinesDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelinesResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetPipelinesResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_scm(&self, param_organization: String, param_scm: String, context: &C) -> Box<Future<Item=GetSCMResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/scm/{scm}",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), scm=utf8_percent_encode(&param_scm.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::GithubScm>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetSCMResponse::SuccessfullyRetrievedSCMDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetSCMResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetSCMResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_scm_organisation_repositories(&self, param_organization: String, param_scm: String, param_scm_organisation: String, param_credential_id: Option<String>, param_page_size: Option<i32>, param_page_number: Option<i32>, context: &C) -> Box<Future<Item=GetSCMOrganisationRepositoriesResponse, Error=ApiError>> {

        // Query parameters
        let query_credential_id = param_credential_id.map_or_else(String::new, |query| format!("credentialId={credential_id}&", credential_id=query.to_string()));
        let query_page_size = param_page_size.map_or_else(String::new, |query| format!("pageSize={page_size}&", page_size=query.to_string()));
        let query_page_number = param_page_number.map_or_else(String::new, |query| format!("pageNumber={page_number}&", page_number=query.to_string()));


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories?{credential_id}{page_size}{page_number}",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), scm=utf8_percent_encode(&param_scm.to_string(), ID_ENCODE_SET), scmOrganisation=utf8_percent_encode(&param_scm_organisation.to_string(), ID_ENCODE_SET),
            credential_id=utf8_percent_encode(&query_credential_id, QUERY_ENCODE_SET),
            page_size=utf8_percent_encode(&query_page_size, QUERY_ENCODE_SET),
            page_number=utf8_percent_encode(&query_page_number, QUERY_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ScmOrganisations>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetSCMOrganisationRepositoriesResponse::SuccessfullyRetrievedSCMOrganizationRepositoriesDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetSCMOrganisationRepositoriesResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetSCMOrganisationRepositoriesResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_scm_organisation_repository(&self, param_organization: String, param_scm: String, param_scm_organisation: String, param_repository: String, param_credential_id: Option<String>, context: &C) -> Box<Future<Item=GetSCMOrganisationRepositoryResponse, Error=ApiError>> {

        // Query parameters
        let query_credential_id = param_credential_id.map_or_else(String::new, |query| format!("credentialId={credential_id}&", credential_id=query.to_string()));


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}?{credential_id}",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), scm=utf8_percent_encode(&param_scm.to_string(), ID_ENCODE_SET), scmOrganisation=utf8_percent_encode(&param_scm_organisation.to_string(), ID_ENCODE_SET), repository=utf8_percent_encode(&param_repository.to_string(), ID_ENCODE_SET),
            credential_id=utf8_percent_encode(&query_credential_id, QUERY_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ScmOrganisations>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetSCMOrganisationRepositoryResponse::SuccessfullyRetrievedSCMOrganizationsDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetSCMOrganisationRepositoryResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetSCMOrganisationRepositoryResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_scm_organisations(&self, param_organization: String, param_scm: String, param_credential_id: Option<String>, context: &C) -> Box<Future<Item=GetSCMOrganisationsResponse, Error=ApiError>> {

        // Query parameters
        let query_credential_id = param_credential_id.map_or_else(String::new, |query| format!("credentialId={credential_id}&", credential_id=query.to_string()));


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/scm/{scm}/organizations?{credential_id}",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), scm=utf8_percent_encode(&param_scm.to_string(), ID_ENCODE_SET),
            credential_id=utf8_percent_encode(&query_credential_id, QUERY_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ScmOrganisations>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetSCMOrganisationsResponse::SuccessfullyRetrievedSCMOrganizationsDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetSCMOrganisationsResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetSCMOrganisationsResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_user(&self, param_organization: String, param_user: String, context: &C) -> Box<Future<Item=GetUserResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/users/{user}",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), user=utf8_percent_encode(&param_user.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::User>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetUserResponse::SuccessfullyRetrievedUsersDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetUserResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetUserResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_user_favorites(&self, param_user: String, context: &C) -> Box<Future<Item=GetUserFavoritesResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/users/{user}/favorites",
            self.base_path, user=utf8_percent_encode(&param_user.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::UserFavorites>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetUserFavoritesResponse::SuccessfullyRetrievedUsersFavoritesDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetUserFavoritesResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetUserFavoritesResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_users(&self, param_organization: String, context: &C) -> Box<Future<Item=GetUsersResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/users/",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::User>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetUsersResponse::SuccessfullyRetrievedUsersDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetUsersResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetUsersResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn post_pipeline_run(&self, param_organization: String, param_pipeline: String, param_run: String, context: &C) -> Box<Future<Item=PostPipelineRunResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), pipeline=utf8_percent_encode(&param_pipeline.to_string(), ID_ENCODE_SET), run=utf8_percent_encode(&param_run.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Post, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::QueueItemImpl>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            PostPipelineRunResponse::SuccessfullyReplayedAPipelineRun(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostPipelineRunResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostPipelineRunResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn post_pipeline_runs(&self, param_organization: String, param_pipeline: String, context: &C) -> Box<Future<Item=PostPipelineRunsResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), pipeline=utf8_percent_encode(&param_pipeline.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Post, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::QueueItemImpl>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            PostPipelineRunsResponse::SuccessfullyStartedABuild(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostPipelineRunsResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostPipelineRunsResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn put_pipeline_favorite(&self, param_organization: String, param_pipeline: String, param_body: models::Body, context: &C) -> Box<Future<Item=PutPipelineFavoriteResponse, Error=ApiError>> {


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), pipeline=utf8_percent_encode(&param_pipeline.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Put, uri);


        let body = serde_json::to_string(&param_body).expect("impossible to fail to serialize");


        request.set_body(body.into_bytes());


        request.headers_mut().set(ContentType(mimetypes::requests::PUT_PIPELINE_FAVORITE.clone()));
        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::FavoriteImpl>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            PutPipelineFavoriteResponse::SuccessfullyFavorited(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PutPipelineFavoriteResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PutPipelineFavoriteResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn put_pipeline_run(&self, param_organization: String, param_pipeline: String, param_run: String, param_blocking: Option<String>, param_time_out_in_secs: Option<i32>, context: &C) -> Box<Future<Item=PutPipelineRunResponse, Error=ApiError>> {

        // Query parameters
        let query_blocking = param_blocking.map_or_else(String::new, |query| format!("blocking={blocking}&", blocking=query.to_string()));
        let query_time_out_in_secs = param_time_out_in_secs.map_or_else(String::new, |query| format!("timeOutInSecs={time_out_in_secs}&", time_out_in_secs=query.to_string()));


        let uri = format!(
            "{}//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop?{blocking}{time_out_in_secs}",
            self.base_path, organization=utf8_percent_encode(&param_organization.to_string(), ID_ENCODE_SET), pipeline=utf8_percent_encode(&param_pipeline.to_string(), ID_ENCODE_SET), run=utf8_percent_encode(&param_run.to_string(), ID_ENCODE_SET),
            blocking=utf8_percent_encode(&query_blocking, QUERY_ENCODE_SET),
            time_out_in_secs=utf8_percent_encode(&query_time_out_in_secs, QUERY_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Put, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::PipelineRun>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            PutPipelineRunResponse::SuccessfullyStoppedABuild(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PutPipelineRunResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PutPipelineRunResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn search(&self, param_q: String, context: &C) -> Box<Future<Item=SearchResponse, Error=ApiError>> {

        // Query parameters
        let query_q = format!("q={q}&", q=param_q.to_string());


        let uri = format!(
            "{}//blue/rest/search/?{q}",
            self.base_path,
            q=utf8_percent_encode(&query_q, QUERY_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<String>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            SearchResponse::SuccessfullyRetrievedSearchResult(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            SearchResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            SearchResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn search_classes(&self, param_q: String, context: &C) -> Box<Future<Item=SearchClassesResponse, Error=ApiError>> {

        // Query parameters
        let query_q = format!("q={q}&", q=param_q.to_string());


        let uri = format!(
            "{}//blue/rest/classes/?{q}",
            self.base_path,
            q=utf8_percent_encode(&query_q, QUERY_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<String>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            SearchClassesResponse::SuccessfullyRetrievedSearchResult(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            SearchClassesResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            SearchClassesResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_computer(&self, param_depth: i32, context: &C) -> Box<Future<Item=GetComputerResponse, Error=ApiError>> {

        // Query parameters
        let query_depth = format!("depth={depth}&", depth=param_depth.to_string());


        let uri = format!(
            "{}//computer/api/json?{depth}",
            self.base_path,
            depth=utf8_percent_encode(&query_depth, QUERY_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ComputerSet>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetComputerResponse::SuccessfullyRetrievedComputerDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetComputerResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetComputerResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_jenkins(&self, context: &C) -> Box<Future<Item=GetJenkinsResponse, Error=ApiError>> {


        let uri = format!(
            "{}//api/json",
            self.base_path
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::Hudson>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetJenkinsResponse::SuccessfullyRetrievedJenkinsDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetJenkinsResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetJenkinsResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_job(&self, param_name: String, context: &C) -> Box<Future<Item=GetJobResponse, Error=ApiError>> {


        let uri = format!(
            "{}//job/{name}/api/json",
            self.base_path, name=utf8_percent_encode(&param_name.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::FreeStyleProject>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetJobResponse::SuccessfullyRetrievedJobDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetJobResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetJobResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                404 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetJobResponse::JobCannotBeFoundOnJenkinsInstance
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_job_config(&self, param_name: String, context: &C) -> Box<Future<Item=GetJobConfigResponse, Error=ApiError>> {


        let uri = format!(
            "{}//job/{name}/config.xml",
            self.base_path, name=utf8_percent_encode(&param_name.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<String>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetJobConfigResponse::SuccessfullyRetrievedJobConfigurationInConfig(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetJobConfigResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetJobConfigResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                404 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetJobConfigResponse::JobCannotBeFoundOnJenkinsInstance
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_job_last_build(&self, param_name: String, context: &C) -> Box<Future<Item=GetJobLastBuildResponse, Error=ApiError>> {


        let uri = format!(
            "{}//job/{name}/lastBuild/api/json",
            self.base_path, name=utf8_percent_encode(&param_name.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::FreeStyleBuild>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetJobLastBuildResponse::SuccessfullyRetrievedJob(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetJobLastBuildResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetJobLastBuildResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                404 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetJobLastBuildResponse::JobCannotBeFoundOnJenkinsInstance
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_job_progressive_text(&self, param_name: String, param_number: String, param_start: String, context: &C) -> Box<Future<Item=GetJobProgressiveTextResponse, Error=ApiError>> {

        // Query parameters
        let query_start = format!("start={start}&", start=param_start.to_string());


        let uri = format!(
            "{}//job/{name}/{number}/logText/progressiveText?{start}",
            self.base_path, name=utf8_percent_encode(&param_name.to_string(), ID_ENCODE_SET), number=utf8_percent_encode(&param_number.to_string(), ID_ENCODE_SET),
            start=utf8_percent_encode(&query_start, QUERY_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetJobProgressiveTextResponse::SuccessfullyRetrievedJob
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetJobProgressiveTextResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetJobProgressiveTextResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                404 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetJobProgressiveTextResponse::JobCannotBeFoundOnJenkinsInstance
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_queue(&self, context: &C) -> Box<Future<Item=GetQueueResponse, Error=ApiError>> {


        let uri = format!(
            "{}//queue/api/json",
            self.base_path
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::Queue>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetQueueResponse::SuccessfullyRetrievedQueueDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetQueueResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetQueueResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_queue_item(&self, param_number: String, context: &C) -> Box<Future<Item=GetQueueItemResponse, Error=ApiError>> {


        let uri = format!(
            "{}//queue/item/{number}/api/json",
            self.base_path, number=utf8_percent_encode(&param_number.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::Queue>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetQueueItemResponse::SuccessfullyRetrievedQueuedItemDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetQueueItemResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetQueueItemResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_view(&self, param_name: String, context: &C) -> Box<Future<Item=GetViewResponse, Error=ApiError>> {


        let uri = format!(
            "{}//view/{name}/api/json",
            self.base_path, name=utf8_percent_encode(&param_name.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ListView>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetViewResponse::SuccessfullyRetrievedViewDetails(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetViewResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetViewResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                404 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetViewResponse::ViewCannotBeFoundOnJenkinsInstance
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn get_view_config(&self, param_name: String, context: &C) -> Box<Future<Item=GetViewConfigResponse, Error=ApiError>> {


        let uri = format!(
            "{}//view/{name}/config.xml",
            self.base_path, name=utf8_percent_encode(&param_name.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<String>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            GetViewConfigResponse::SuccessfullyRetrievedViewConfigurationInConfig(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetViewConfigResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetViewConfigResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                404 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            GetViewConfigResponse::ViewCannotBeFoundOnJenkinsInstance
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn head_jenkins(&self, context: &C) -> Box<Future<Item=HeadJenkinsResponse, Error=ApiError>> {


        let uri = format!(
            "{}//api/json",
            self.base_path
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Head, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    header! { (ResponseXJenkins, "x-jenkins") => [String] }
                    let response_x_jenkins = match response.headers().get::<ResponseXJenkins>() {
                        Some(response_x_jenkins) => response_x_jenkins.0.clone(),
                        None => return Box::new(future::err(ApiError(String::from("Required response header x-jenkins for response 200 was not found.")))) as Box<Future<Item=_, Error=_>>,
                    };
                    let body = response.body();
                    Box::new(

                        future::ok(
                            HeadJenkinsResponse::SuccessfullyRetrievedJenkinsHeaders{ x_jenkins: response_x_jenkins }
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            HeadJenkinsResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            HeadJenkinsResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn post_create_item(&self, param_name: String, param_from: Option<String>, param_mode: Option<String>, param_jenkins_crumb: Option<String>, param_content_type: Option<String>, param_body: Option<String>, context: &C) -> Box<Future<Item=PostCreateItemResponse, Error=ApiError>> {

        // Query parameters
        let query_name = format!("name={name}&", name=param_name.to_string());
        let query_from = param_from.map_or_else(String::new, |query| format!("from={from}&", from=query.to_string()));
        let query_mode = param_mode.map_or_else(String::new, |query| format!("mode={mode}&", mode=query.to_string()));


        let uri = format!(
            "{}//createItem?{name}{from}{mode}",
            self.base_path,
            name=utf8_percent_encode(&query_name, QUERY_ENCODE_SET),
            from=utf8_percent_encode(&query_from, QUERY_ENCODE_SET),
            mode=utf8_percent_encode(&query_mode, QUERY_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Post, uri);

        let body = param_body.map(|ref body| {

            serde_json::to_string(body).expect("impossible to fail to serialize")
        });

if let Some(body) = body {
            request.set_body(body.into_bytes());
        }

        request.headers_mut().set(ContentType(mimetypes::requests::POST_CREATE_ITEM.clone()));
        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });
        // Header parameters
        header! { (RequestJenkinsCrumb, "Jenkins-Crumb") => [String] }
        param_jenkins_crumb.map(|header| request.headers_mut().set(RequestJenkinsCrumb(header)));
        header! { (RequestContentType, "Content-Type") => [String] }
        param_content_type.map(|header| request.headers_mut().set(RequestContentType(header)));


        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostCreateItemResponse::SuccessfullyCreatedANewJob
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                400 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<String>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            PostCreateItemResponse::AnErrorHasOccurred(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostCreateItemResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostCreateItemResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn post_create_view(&self, param_name: String, param_jenkins_crumb: Option<String>, param_content_type: Option<String>, param_body: Option<String>, context: &C) -> Box<Future<Item=PostCreateViewResponse, Error=ApiError>> {

        // Query parameters
        let query_name = format!("name={name}&", name=param_name.to_string());


        let uri = format!(
            "{}//createView?{name}",
            self.base_path,
            name=utf8_percent_encode(&query_name, QUERY_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Post, uri);

        let body = param_body.map(|ref body| {

            serde_json::to_string(body).expect("impossible to fail to serialize")
        });

if let Some(body) = body {
            request.set_body(body.into_bytes());
        }

        request.headers_mut().set(ContentType(mimetypes::requests::POST_CREATE_VIEW.clone()));
        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });
        // Header parameters
        header! { (RequestJenkinsCrumb, "Jenkins-Crumb") => [String] }
        param_jenkins_crumb.map(|header| request.headers_mut().set(RequestJenkinsCrumb(header)));
        header! { (RequestContentType, "Content-Type") => [String] }
        param_content_type.map(|header| request.headers_mut().set(RequestContentType(header)));


        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostCreateViewResponse::SuccessfullyCreatedTheView
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                400 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<String>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            PostCreateViewResponse::AnErrorHasOccurred(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostCreateViewResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostCreateViewResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn post_job_build(&self, param_name: String, param_json: String, param_token: Option<String>, param_jenkins_crumb: Option<String>, context: &C) -> Box<Future<Item=PostJobBuildResponse, Error=ApiError>> {

        // Query parameters
        let query_json = format!("json={json}&", json=param_json.to_string());
        let query_token = param_token.map_or_else(String::new, |query| format!("token={token}&", token=query.to_string()));


        let uri = format!(
            "{}//job/{name}/build?{json}{token}",
            self.base_path, name=utf8_percent_encode(&param_name.to_string(), ID_ENCODE_SET),
            json=utf8_percent_encode(&query_json, QUERY_ENCODE_SET),
            token=utf8_percent_encode(&query_token, QUERY_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Post, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });
        // Header parameters
        header! { (RequestJenkinsCrumb, "Jenkins-Crumb") => [String] }
        param_jenkins_crumb.map(|header| request.headers_mut().set(RequestJenkinsCrumb(header)));


        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobBuildResponse::SuccessfullyBuiltTheJob
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                201 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobBuildResponse::SuccessfullyBuiltTheJob
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobBuildResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobBuildResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                404 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobBuildResponse::JobCannotBeFoundOnJenkinsInstance
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn post_job_config(&self, param_name: String, param_body: String, param_jenkins_crumb: Option<String>, context: &C) -> Box<Future<Item=PostJobConfigResponse, Error=ApiError>> {


        let uri = format!(
            "{}//job/{name}/config.xml",
            self.base_path, name=utf8_percent_encode(&param_name.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Post, uri);


        let body = serde_json::to_string(&param_body).expect("impossible to fail to serialize");


        request.set_body(body.into_bytes());


        request.headers_mut().set(ContentType(mimetypes::requests::POST_JOB_CONFIG.clone()));
        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });
        // Header parameters
        header! { (RequestJenkinsCrumb, "Jenkins-Crumb") => [String] }
        param_jenkins_crumb.map(|header| request.headers_mut().set(RequestJenkinsCrumb(header)));


        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobConfigResponse::SuccessfullyRetrievedJobConfigurationInConfig
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                400 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<String>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            PostJobConfigResponse::AnErrorHasOccurred(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobConfigResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobConfigResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                404 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobConfigResponse::JobCannotBeFoundOnJenkinsInstance
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn post_job_delete(&self, param_name: String, param_jenkins_crumb: Option<String>, context: &C) -> Box<Future<Item=PostJobDeleteResponse, Error=ApiError>> {


        let uri = format!(
            "{}//job/{name}/doDelete",
            self.base_path, name=utf8_percent_encode(&param_name.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Post, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });
        // Header parameters
        header! { (RequestJenkinsCrumb, "Jenkins-Crumb") => [String] }
        param_jenkins_crumb.map(|header| request.headers_mut().set(RequestJenkinsCrumb(header)));


        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobDeleteResponse::SuccessfullyDeletedTheJob
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobDeleteResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobDeleteResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                404 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobDeleteResponse::JobCannotBeFoundOnJenkinsInstance
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn post_job_disable(&self, param_name: String, param_jenkins_crumb: Option<String>, context: &C) -> Box<Future<Item=PostJobDisableResponse, Error=ApiError>> {


        let uri = format!(
            "{}//job/{name}/disable",
            self.base_path, name=utf8_percent_encode(&param_name.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Post, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });
        // Header parameters
        header! { (RequestJenkinsCrumb, "Jenkins-Crumb") => [String] }
        param_jenkins_crumb.map(|header| request.headers_mut().set(RequestJenkinsCrumb(header)));


        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobDisableResponse::SuccessfullyDisabledTheJob
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobDisableResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobDisableResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                404 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobDisableResponse::JobCannotBeFoundOnJenkinsInstance
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn post_job_enable(&self, param_name: String, param_jenkins_crumb: Option<String>, context: &C) -> Box<Future<Item=PostJobEnableResponse, Error=ApiError>> {


        let uri = format!(
            "{}//job/{name}/enable",
            self.base_path, name=utf8_percent_encode(&param_name.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Post, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });
        // Header parameters
        header! { (RequestJenkinsCrumb, "Jenkins-Crumb") => [String] }
        param_jenkins_crumb.map(|header| request.headers_mut().set(RequestJenkinsCrumb(header)));


        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobEnableResponse::SuccessfullyEnabledTheJob
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobEnableResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobEnableResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                404 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobEnableResponse::JobCannotBeFoundOnJenkinsInstance
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn post_job_last_build_stop(&self, param_name: String, param_jenkins_crumb: Option<String>, context: &C) -> Box<Future<Item=PostJobLastBuildStopResponse, Error=ApiError>> {


        let uri = format!(
            "{}//job/{name}/lastBuild/stop",
            self.base_path, name=utf8_percent_encode(&param_name.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Post, uri);



        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });
        // Header parameters
        header! { (RequestJenkinsCrumb, "Jenkins-Crumb") => [String] }
        param_jenkins_crumb.map(|header| request.headers_mut().set(RequestJenkinsCrumb(header)));


        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobLastBuildStopResponse::SuccessfullyStoppedTheJob
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobLastBuildStopResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobLastBuildStopResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                404 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostJobLastBuildStopResponse::JobCannotBeFoundOnJenkinsInstance
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn post_view_config(&self, param_name: String, param_body: String, param_jenkins_crumb: Option<String>, context: &C) -> Box<Future<Item=PostViewConfigResponse, Error=ApiError>> {


        let uri = format!(
            "{}//view/{name}/config.xml",
            self.base_path, name=utf8_percent_encode(&param_name.to_string(), ID_ENCODE_SET)
        );

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Post, uri);


        let body = serde_json::to_string(&param_body).expect("impossible to fail to serialize");


        request.set_body(body.into_bytes());


        request.headers_mut().set(ContentType(mimetypes::requests::POST_VIEW_CONFIG.clone()));
        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        (context as &Has<Option<AuthData>>).get().as_ref().map(|auth_data| {
            if let &AuthData::Basic(ref basic_header) = auth_data {
                request.headers_mut().set(hyper::header::Authorization(
                    basic_header.clone(),
                ))
            }
        });
        // Header parameters
        header! { (RequestJenkinsCrumb, "Jenkins-Crumb") => [String] }
        param_jenkins_crumb.map(|header| request.headers_mut().set(RequestJenkinsCrumb(header)));


        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostViewConfigResponse::SuccessfullyUpdatedViewConfiguration
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                400 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body| str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<String>(body)
                                                     .map_err(|e| e.into())

                                             ))
                        .map(move |body|
                            PostViewConfigResponse::AnErrorHasOccurred(body)
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                401 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostViewConfigResponse::AuthenticationFailed
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                403 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostViewConfigResponse::JenkinsRequiresAuthentication
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                404 => {
                    let body = response.body();
                    Box::new(

                        future::ok(
                            PostViewConfigResponse::ViewCannotBeFoundOnJenkinsInstance
                        )
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

}

#[derive(Debug)]
pub enum ClientInitError {
    InvalidScheme,
    InvalidUri(hyper::error::UriError),
    MissingHost,
    SslError(openssl::error::ErrorStack)
}

impl From<hyper::error::UriError> for ClientInitError {
    fn from(err: hyper::error::UriError) -> ClientInitError {
        ClientInitError::InvalidUri(err)
    }
}

impl From<openssl::error::ErrorStack> for ClientInitError {
    fn from(err: openssl::error::ErrorStack) -> ClientInitError {
        ClientInitError::SslError(err)
    }
}

impl fmt::Display for ClientInitError {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        (self as &fmt::Debug).fmt(f)
    }
}

impl error::Error for ClientInitError {
    fn description(&self) -> &str {
        "Failed to produce a hyper client."
    }
}
