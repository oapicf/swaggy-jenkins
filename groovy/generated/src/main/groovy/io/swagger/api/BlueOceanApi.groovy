package io.swagger.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import io.swagger.api.ApiUtils

import io.swagger.model.GetMultibranchPipeline
import io.swagger.model.GetOrganisations
import io.swagger.model.GetPipelines
import io.swagger.model.IojenkinsblueoceanrestimplpipelineBranchImpl
import io.swagger.model.IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl
import io.swagger.model.IojenkinsblueoceanserviceembeddedrestPipelineImpl
import io.swagger.model.SwaggyjenkinsOrganisation
import io.swagger.model.SwaggyjenkinsPipeline
import io.swagger.model.SwaggyjenkinsUser

import java.util.*;

@Mixin(ApiUtils)
class BlueOceanApi {
    String basePath = "http://localhost"
    String versionPath = "/api/v1"

    def getAuthenticatedUser ( String organisation, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organisation}/user/"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organisation == null) {
            throw new RuntimeException("missing required params organisation")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    SwaggyjenkinsUser.class )
                    
    }
    def getClasses ( String propertyClass, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/classes/{class}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (propertyClass == null) {
            throw new RuntimeException("missing required params propertyClass")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    String.class )
                    
    }
    def getOrganisation ( String organisation, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organisation}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organisation == null) {
            throw new RuntimeException("missing required params organisation")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    SwaggyjenkinsOrganisation.class )
                    
    }
    def getOrganisations ( Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    GetOrganisations.class )
                    
    }
    def getPipelineBranchByOrg ( String organisation, String pipeline, String branch, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organisation == null) {
            throw new RuntimeException("missing required params organisation")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }
        // verify required params are set
        if (branch == null) {
            throw new RuntimeException("missing required params branch")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    IojenkinsblueoceanrestimplpipelineBranchImpl.class )
                    
    }
    def getPipelineBranchesByOrg ( String organisation, String pipeline, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organisation == null) {
            throw new RuntimeException("missing required params organisation")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    GetMultibranchPipeline.class )
                    
    }
    def getPipelineByOrg ( String organisation, String pipeline, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organisation}/pipelines/{pipeline}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organisation == null) {
            throw new RuntimeException("missing required params organisation")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    SwaggyjenkinsPipeline.class )
                    
    }
    def getPipelineFolderByOrg ( String organisation, String folder, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organisation}/pipelines/{folder}/"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organisation == null) {
            throw new RuntimeException("missing required params organisation")
        }
        // verify required params are set
        if (folder == null) {
            throw new RuntimeException("missing required params folder")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.class )
                    
    }
    def getPipelineFolderByOrg_0 ( String organisation, String pipeline, String folder, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organisation == null) {
            throw new RuntimeException("missing required params organisation")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }
        // verify required params are set
        if (folder == null) {
            throw new RuntimeException("missing required params folder")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    IojenkinsblueoceanserviceembeddedrestPipelineImpl.class )
                    
    }
    def getPipelinesByOrg ( String organisation, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organisation}/pipelines/"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organisation == null) {
            throw new RuntimeException("missing required params organisation")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    GetPipelines.class )
                    
    }
    def getUser ( String organisation, String user, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organisation}/users/{user}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organisation == null) {
            throw new RuntimeException("missing required params organisation")
        }
        // verify required params are set
        if (user == null) {
            throw new RuntimeException("missing required params user")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    SwaggyjenkinsUser.class )
                    
    }
    def getUsers ( String organisation, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organisation}/users/"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organisation == null) {
            throw new RuntimeException("missing required params organisation")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    SwaggyjenkinsUser.class )
                    
    }
    def search ( String q, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/classes/"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (q == null) {
            throw new RuntimeException("missing required params q")
        }

        if (!"null".equals(String.valueOf(q)))
            queryParams.put("q", String.valueOf(q))


        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    String.class )
                    
    }
    def search_0 ( String q, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/search/"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (q == null) {
            throw new RuntimeException("missing required params q")
        }

        if (!"null".equals(String.valueOf(q)))
            queryParams.put("q", String.valueOf(q))


        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    String.class )
                    
    }
}
