package org.openapitools.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import org.openapitools.api.ApiUtils

import org.openapitools.model.DefaultCrumbIssuer

import java.util.*;

@Mixin(ApiUtils)
class BaseRemoteAccessApi {
    String basePath = "http://localhost"
    String versionPath = "/api/v1"

    def getCrumb ( Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/crumbIssuer/api/json"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    DefaultCrumbIssuer.class )

    }

}
