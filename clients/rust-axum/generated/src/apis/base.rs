use async_trait::async_trait;
use axum::extract::*;
use axum_extra::extract::{CookieJar, Host};
use bytes::Bytes;
use http::Method;
use serde::{Deserialize, Serialize};

use crate::{models, types::*};

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetCrumbResponse {
    /// Successfully retrieved CSRF protection token
    Status200_SuccessfullyRetrievedCSRFProtectionToken
    (models::DefaultCrumbIssuer)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}




/// Base
#[async_trait]
#[allow(clippy::ptr_arg)]
pub trait Base<E: std::fmt::Debug + Send + Sync + 'static = ()>: super::ErrorHandler<E> {
    type Claims;

    /// GetCrumb - GET /crumbIssuer/api/json
    async fn get_crumb(
    &self,
    
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
    ) -> Result<GetCrumbResponse, E>;
}
