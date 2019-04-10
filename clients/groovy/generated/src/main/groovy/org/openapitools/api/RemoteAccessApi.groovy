package org.openapitools.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import org.openapitools.api.ApiUtils

import org.openapitools.model.ComputerSet
import org.openapitools.model.FreeStyleBuild
import org.openapitools.model.FreeStyleProject
import org.openapitools.model.Hudson
import org.openapitools.model.ListView
import org.openapitools.model.Queue

import java.util.*;

@Mixin(ApiUtils)
class RemoteAccessApi {
    String basePath = "http://localhost"
    String versionPath = "/api/v1"

    def getComputer ( Integer depth, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/computer/api/json"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (depth == null) {
            throw new RuntimeException("missing required params depth")
        }

        if (!"null".equals(String.valueOf(depth)))
            queryParams.put("depth", String.valueOf(depth))

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    ComputerSet.class )

    }

    def getJenkins ( Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/api/json"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    Hudson.class )

    }

    def getJob ( String name, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/job/{name}/api/json"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    FreeStyleProject.class )

    }

    def getJobConfig ( String name, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/job/{name}/config.xml"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    String.class )

    }

    def getJobLastBuild ( String name, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/job/{name}/lastBuild/api/json"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    FreeStyleBuild.class )

    }

    def getJobProgressiveText ( String name, String number, String start, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/job/{name}/{number}/logText/progressiveText"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        // verify required params are set
        if (number == null) {
            throw new RuntimeException("missing required params number")
        }

        // verify required params are set
        if (start == null) {
            throw new RuntimeException("missing required params start")
        }

        if (!"null".equals(String.valueOf(start)))
            queryParams.put("start", String.valueOf(start))

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    null )

    }

    def getQueue ( Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/queue/api/json"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    Queue.class )

    }

    def getQueueItem ( String number, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/queue/item/{number}/api/json"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (number == null) {
            throw new RuntimeException("missing required params number")
        }

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    Queue.class )

    }

    def getView ( String name, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/view/{name}/api/json"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    ListView.class )

    }

    def getViewConfig ( String name, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/view/{name}/config.xml"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    String.class )

    }

    def headJenkins ( Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/api/json"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "HEAD", "",
                    null )

    }

    def postCreateItem ( String name, String from, String mode, String jenkinsCrumb, String contentType, String body, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/createItem"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        if (!"null".equals(String.valueOf(name)))
            queryParams.put("name", String.valueOf(name))

        if (!"null".equals(String.valueOf(from)))
            queryParams.put("from", String.valueOf(from))

        if (!"null".equals(String.valueOf(mode)))
            queryParams.put("mode", String.valueOf(mode))

        headerParams.put("Jenkins-Crumb", jenkinsCrumb)

        headerParams.put("Content-Type", contentType)

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    null )

    }

    def postCreateView ( String name, String jenkinsCrumb, String contentType, String body, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/createView"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        if (!"null".equals(String.valueOf(name)))
            queryParams.put("name", String.valueOf(name))

        headerParams.put("Jenkins-Crumb", jenkinsCrumb)

        headerParams.put("Content-Type", contentType)

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    null )

    }

    def postJobBuild ( String name, String json, String token, String jenkinsCrumb, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/job/{name}/build"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        // verify required params are set
        if (json == null) {
            throw new RuntimeException("missing required params json")
        }

        if (!"null".equals(String.valueOf(json)))
            queryParams.put("json", String.valueOf(json))

        if (!"null".equals(String.valueOf(token)))
            queryParams.put("token", String.valueOf(token))

        headerParams.put("Jenkins-Crumb", jenkinsCrumb)

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    null )

    }

    def postJobConfig ( String name, String body, String jenkinsCrumb, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/job/{name}/config.xml"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        // verify required params are set
        if (body == null) {
            throw new RuntimeException("missing required params body")
        }

        headerParams.put("Jenkins-Crumb", jenkinsCrumb)

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    null )

    }

    def postJobDelete ( String name, String jenkinsCrumb, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/job/{name}/doDelete"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        headerParams.put("Jenkins-Crumb", jenkinsCrumb)

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    null )

    }

    def postJobDisable ( String name, String jenkinsCrumb, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/job/{name}/disable"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        headerParams.put("Jenkins-Crumb", jenkinsCrumb)

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    null )

    }

    def postJobEnable ( String name, String jenkinsCrumb, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/job/{name}/enable"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        headerParams.put("Jenkins-Crumb", jenkinsCrumb)

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    null )

    }

    def postJobLastBuildStop ( String name, String jenkinsCrumb, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/job/{name}/lastBuild/stop"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        headerParams.put("Jenkins-Crumb", jenkinsCrumb)

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    null )

    }

    def postViewConfig ( String name, String body, String jenkinsCrumb, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/view/{name}/config.xml"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        // verify required params are set
        if (body == null) {
            throw new RuntimeException("missing required params body")
        }

        headerParams.put("Jenkins-Crumb", jenkinsCrumb)

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    null )

    }

}
