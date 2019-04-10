/* 
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 * Generated by: https://openapi-generator.tech
 */

use std::rc::Rc;
use std::borrow::Borrow;

use hyper;
use serde_json;
use futures::Future;

use super::{Error, configuration};
use super::request as __internal_request;

pub struct RemoteAccessApiClient<C: hyper::client::Connect> {
    configuration: Rc<configuration::Configuration<C>>,
}

impl<C: hyper::client::Connect> RemoteAccessApiClient<C> {
    pub fn new(configuration: Rc<configuration::Configuration<C>>) -> RemoteAccessApiClient<C> {
        RemoteAccessApiClient {
            configuration: configuration,
        }
    }
}

pub trait RemoteAccessApi {
    fn get_computer(&self, depth: i32) -> Box<Future<Item = ::models::ComputerSet, Error = Error<serde_json::Value>>>;
    fn get_jenkins(&self, ) -> Box<Future<Item = ::models::Hudson, Error = Error<serde_json::Value>>>;
    fn get_job(&self, name: &str) -> Box<Future<Item = ::models::FreeStyleProject, Error = Error<serde_json::Value>>>;
    fn get_job_config(&self, name: &str) -> Box<Future<Item = String, Error = Error<serde_json::Value>>>;
    fn get_job_last_build(&self, name: &str) -> Box<Future<Item = ::models::FreeStyleBuild, Error = Error<serde_json::Value>>>;
    fn get_job_progressive_text(&self, name: &str, number: &str, start: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>>;
    fn get_queue(&self, ) -> Box<Future<Item = ::models::Queue, Error = Error<serde_json::Value>>>;
    fn get_queue_item(&self, number: &str) -> Box<Future<Item = ::models::Queue, Error = Error<serde_json::Value>>>;
    fn get_view(&self, name: &str) -> Box<Future<Item = ::models::ListView, Error = Error<serde_json::Value>>>;
    fn get_view_config(&self, name: &str) -> Box<Future<Item = String, Error = Error<serde_json::Value>>>;
    fn head_jenkins(&self, ) -> Box<Future<Item = (), Error = Error<serde_json::Value>>>;
    fn post_create_item(&self, name: &str, from: &str, mode: &str, jenkins_crumb: &str, content_type: &str, body: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>>;
    fn post_create_view(&self, name: &str, jenkins_crumb: &str, content_type: &str, body: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>>;
    fn post_job_build(&self, name: &str, json: &str, token: &str, jenkins_crumb: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>>;
    fn post_job_config(&self, name: &str, body: &str, jenkins_crumb: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>>;
    fn post_job_delete(&self, name: &str, jenkins_crumb: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>>;
    fn post_job_disable(&self, name: &str, jenkins_crumb: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>>;
    fn post_job_enable(&self, name: &str, jenkins_crumb: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>>;
    fn post_job_last_build_stop(&self, name: &str, jenkins_crumb: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>>;
    fn post_view_config(&self, name: &str, body: &str, jenkins_crumb: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>>;
}


impl<C: hyper::client::Connect>RemoteAccessApi for RemoteAccessApiClient<C> {
    fn get_computer(&self, depth: i32) -> Box<Future<Item = ::models::ComputerSet, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/computer/api/json".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_query_param("depth".to_string(), depth.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_jenkins(&self, ) -> Box<Future<Item = ::models::Hudson, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/api/json".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .execute(self.configuration.borrow())
    }

    fn get_job(&self, name: &str) -> Box<Future<Item = ::models::FreeStyleProject, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/job/{name}/api/json".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("name".to_string(), name.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_job_config(&self, name: &str) -> Box<Future<Item = String, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/job/{name}/config.xml".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("name".to_string(), name.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_job_last_build(&self, name: &str) -> Box<Future<Item = ::models::FreeStyleBuild, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/job/{name}/lastBuild/api/json".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("name".to_string(), name.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_job_progressive_text(&self, name: &str, number: &str, start: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/job/{name}/{number}/logText/progressiveText".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_query_param("start".to_string(), start.to_string())
            .with_path_param("name".to_string(), name.to_string())
            .with_path_param("number".to_string(), number.to_string())
            .returns_nothing()
            .execute(self.configuration.borrow())
    }

    fn get_queue(&self, ) -> Box<Future<Item = ::models::Queue, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/queue/api/json".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .execute(self.configuration.borrow())
    }

    fn get_queue_item(&self, number: &str) -> Box<Future<Item = ::models::Queue, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/queue/item/{number}/api/json".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("number".to_string(), number.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_view(&self, name: &str) -> Box<Future<Item = ::models::ListView, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/view/{name}/api/json".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("name".to_string(), name.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_view_config(&self, name: &str) -> Box<Future<Item = String, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/view/{name}/config.xml".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("name".to_string(), name.to_string())
            .execute(self.configuration.borrow())
    }

    fn head_jenkins(&self, ) -> Box<Future<Item = (), Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Head, "/api/json".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .returns_nothing()
            .execute(self.configuration.borrow())
    }

    fn post_create_item(&self, name: &str, from: &str, mode: &str, jenkins_crumb: &str, content_type: &str, body: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Post, "/createItem".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_query_param("name".to_string(), name.to_string())
            .with_query_param("from".to_string(), from.to_string())
            .with_query_param("mode".to_string(), mode.to_string())
            .with_header_param("Jenkins-Crumb".to_string(), jenkins_crumb.to_string())
            .with_header_param("Content-Type".to_string(), content_type.to_string())
            .with_body_param(body)
            .returns_nothing()
            .execute(self.configuration.borrow())
    }

    fn post_create_view(&self, name: &str, jenkins_crumb: &str, content_type: &str, body: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Post, "/createView".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_query_param("name".to_string(), name.to_string())
            .with_header_param("Jenkins-Crumb".to_string(), jenkins_crumb.to_string())
            .with_header_param("Content-Type".to_string(), content_type.to_string())
            .with_body_param(body)
            .returns_nothing()
            .execute(self.configuration.borrow())
    }

    fn post_job_build(&self, name: &str, json: &str, token: &str, jenkins_crumb: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Post, "/job/{name}/build".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_query_param("json".to_string(), json.to_string())
            .with_query_param("token".to_string(), token.to_string())
            .with_path_param("name".to_string(), name.to_string())
            .with_header_param("Jenkins-Crumb".to_string(), jenkins_crumb.to_string())
            .returns_nothing()
            .execute(self.configuration.borrow())
    }

    fn post_job_config(&self, name: &str, body: &str, jenkins_crumb: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Post, "/job/{name}/config.xml".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("name".to_string(), name.to_string())
            .with_header_param("Jenkins-Crumb".to_string(), jenkins_crumb.to_string())
            .with_body_param(body)
            .returns_nothing()
            .execute(self.configuration.borrow())
    }

    fn post_job_delete(&self, name: &str, jenkins_crumb: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Post, "/job/{name}/doDelete".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("name".to_string(), name.to_string())
            .with_header_param("Jenkins-Crumb".to_string(), jenkins_crumb.to_string())
            .returns_nothing()
            .execute(self.configuration.borrow())
    }

    fn post_job_disable(&self, name: &str, jenkins_crumb: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Post, "/job/{name}/disable".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("name".to_string(), name.to_string())
            .with_header_param("Jenkins-Crumb".to_string(), jenkins_crumb.to_string())
            .returns_nothing()
            .execute(self.configuration.borrow())
    }

    fn post_job_enable(&self, name: &str, jenkins_crumb: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Post, "/job/{name}/enable".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("name".to_string(), name.to_string())
            .with_header_param("Jenkins-Crumb".to_string(), jenkins_crumb.to_string())
            .returns_nothing()
            .execute(self.configuration.borrow())
    }

    fn post_job_last_build_stop(&self, name: &str, jenkins_crumb: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Post, "/job/{name}/lastBuild/stop".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("name".to_string(), name.to_string())
            .with_header_param("Jenkins-Crumb".to_string(), jenkins_crumb.to_string())
            .returns_nothing()
            .execute(self.configuration.borrow())
    }

    fn post_view_config(&self, name: &str, body: &str, jenkins_crumb: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Post, "/view/{name}/config.xml".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("name".to_string(), name.to_string())
            .with_header_param("Jenkins-Crumb".to_string(), jenkins_crumb.to_string())
            .with_body_param(body)
            .returns_nothing()
            .execute(self.configuration.borrow())
    }

}
