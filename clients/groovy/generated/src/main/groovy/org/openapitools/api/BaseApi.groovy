package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.DefaultCrumbIssuer

class BaseApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def getCrumb ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/crumbIssuer/api/json"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    DefaultCrumbIssuer.class )

    }

}
