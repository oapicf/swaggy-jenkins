package io.swagger.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import io.swagger.api.ApiUtils

import io.swagger.model.BranchImpl
import io.swagger.model.FavoriteImpl
import io.swagger.model.GithubScm
import io.swagger.model.MultibranchPipeline
import io.swagger.model.Organisation
import io.swagger.model.Organisations
import io.swagger.model.Pipeline
import io.swagger.model.PipelineActivities
import io.swagger.model.PipelineFolderImpl
import io.swagger.model.PipelineImpl
import io.swagger.model.PipelineQueue
import io.swagger.model.PipelineRun
import io.swagger.model.PipelineRunNode
import io.swagger.model.PipelineRunNodeSteps
import io.swagger.model.PipelineRunNodes
import io.swagger.model.PipelineRuns
import io.swagger.model.PipelineStepImpl
import io.swagger.model.Pipelines
import io.swagger.model.QueueItemImpl
import io.swagger.model.ScmOrganisations
import io.swagger.model.User
import io.swagger.model.UserFavorites

import java.util.*;

@Mixin(ApiUtils)
class BlueOceanApi {
    String basePath = "http://localhost"
    String versionPath = "/api/v1"

    def deletePipelineQueueItem ( String organization, String pipeline, String queue, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }
        // verify required params are set
        if (queue == null) {
            throw new RuntimeException("missing required params queue")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "DELETE", "",
                    null )
                    
    }
    def getAuthenticatedUser ( String organization, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/user/"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    User.class )
                    
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
    def getOrganisation ( String organization, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    Organisation.class )
                    
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
                    Organisations.class )
                    
    }
    def getPipeline ( String organization, String pipeline, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/{pipeline}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    Pipeline.class )
                    
    }
    def getPipelineActivities ( String organization, String pipeline, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    PipelineActivities.class )
                    
    }
    def getPipelineBranch ( String organization, String pipeline, String branch, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
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
                    BranchImpl.class )
                    
    }
    def getPipelineBranchRun ( String organization, String pipeline, String branch, String run, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }
        // verify required params are set
        if (branch == null) {
            throw new RuntimeException("missing required params branch")
        }
        // verify required params are set
        if (run == null) {
            throw new RuntimeException("missing required params run")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    PipelineRun.class )
                    
    }
    def getPipelineBranches ( String organization, String pipeline, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    MultibranchPipeline.class )
                    
    }
    def getPipelineFolder ( String organization, String folder, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/{folder}/"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (folder == null) {
            throw new RuntimeException("missing required params folder")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    PipelineFolderImpl.class )
                    
    }
    def getPipelineFolderPipeline ( String organization, String pipeline, String folder, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
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
                    PipelineImpl.class )
                    
    }
    def getPipelineQueue ( String organization, String pipeline, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    PipelineQueue.class )
                    
    }
    def getPipelineRun ( String organization, String pipeline, String run, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }
        // verify required params are set
        if (run == null) {
            throw new RuntimeException("missing required params run")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    PipelineRun.class )
                    
    }
    def getPipelineRunLog ( String organization, String pipeline, String run, Integer start, Boolean download, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }
        // verify required params are set
        if (run == null) {
            throw new RuntimeException("missing required params run")
        }

        if (!"null".equals(String.valueOf(start)))
            queryParams.put("start", String.valueOf(start))
if (!"null".equals(String.valueOf(download)))
            queryParams.put("download", String.valueOf(download))


        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    String.class )
                    
    }
    def getPipelineRunNode ( String organization, String pipeline, String run, String node, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }
        // verify required params are set
        if (run == null) {
            throw new RuntimeException("missing required params run")
        }
        // verify required params are set
        if (node == null) {
            throw new RuntimeException("missing required params node")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    PipelineRunNode.class )
                    
    }
    def getPipelineRunNodeStep ( String organization, String pipeline, String run, String node, String step, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }
        // verify required params are set
        if (run == null) {
            throw new RuntimeException("missing required params run")
        }
        // verify required params are set
        if (node == null) {
            throw new RuntimeException("missing required params node")
        }
        // verify required params are set
        if (step == null) {
            throw new RuntimeException("missing required params step")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    PipelineStepImpl.class )
                    
    }
    def getPipelineRunNodeStepLog ( String organization, String pipeline, String run, String node, String step, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }
        // verify required params are set
        if (run == null) {
            throw new RuntimeException("missing required params run")
        }
        // verify required params are set
        if (node == null) {
            throw new RuntimeException("missing required params node")
        }
        // verify required params are set
        if (step == null) {
            throw new RuntimeException("missing required params step")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    String.class )
                    
    }
    def getPipelineRunNodeSteps ( String organization, String pipeline, String run, String node, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }
        // verify required params are set
        if (run == null) {
            throw new RuntimeException("missing required params run")
        }
        // verify required params are set
        if (node == null) {
            throw new RuntimeException("missing required params node")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    PipelineRunNodeSteps.class )
                    
    }
    def getPipelineRunNodes ( String organization, String pipeline, String run, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }
        // verify required params are set
        if (run == null) {
            throw new RuntimeException("missing required params run")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    PipelineRunNodes.class )
                    
    }
    def getPipelineRuns ( String organization, String pipeline, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    PipelineRuns.class )
                    
    }
    def getPipelines ( String organization, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    Pipelines.class )
                    
    }
    def getSCM ( String organization, String scm, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/scm/{scm}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (scm == null) {
            throw new RuntimeException("missing required params scm")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    GithubScm.class )
                    
    }
    def getSCMOrganisationRepositories ( String organization, String scm, String scmOrganisation, String credentialId, Integer pageSize, Integer pageNumber, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (scm == null) {
            throw new RuntimeException("missing required params scm")
        }
        // verify required params are set
        if (scmOrganisation == null) {
            throw new RuntimeException("missing required params scmOrganisation")
        }

        if (!"null".equals(String.valueOf(credentialId)))
            queryParams.put("credentialId", String.valueOf(credentialId))
if (!"null".equals(String.valueOf(pageSize)))
            queryParams.put("pageSize", String.valueOf(pageSize))
if (!"null".equals(String.valueOf(pageNumber)))
            queryParams.put("pageNumber", String.valueOf(pageNumber))


        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    ScmOrganisations.class )
                    
    }
    def getSCMOrganisationRepository ( String organization, String scm, String scmOrganisation, String repository, String credentialId, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (scm == null) {
            throw new RuntimeException("missing required params scm")
        }
        // verify required params are set
        if (scmOrganisation == null) {
            throw new RuntimeException("missing required params scmOrganisation")
        }
        // verify required params are set
        if (repository == null) {
            throw new RuntimeException("missing required params repository")
        }

        if (!"null".equals(String.valueOf(credentialId)))
            queryParams.put("credentialId", String.valueOf(credentialId))


        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    ScmOrganisations.class )
                    
    }
    def getSCMOrganisations ( String organization, String scm, String credentialId, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/scm/{scm}/organizations"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (scm == null) {
            throw new RuntimeException("missing required params scm")
        }

        if (!"null".equals(String.valueOf(credentialId)))
            queryParams.put("credentialId", String.valueOf(credentialId))


        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    ScmOrganisations.class )
                    
    }
    def getUser ( String organization, String user, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/users/{user}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (user == null) {
            throw new RuntimeException("missing required params user")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    User.class )
                    
    }
    def getUserFavorites ( String user, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/users/{user}/favorites"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (user == null) {
            throw new RuntimeException("missing required params user")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    UserFavorites.class )
                    
    }
    def getUsers ( String organization, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/users/"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    User.class )
                    
    }
    def postPipelineRun ( String organization, String pipeline, String run, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }
        // verify required params are set
        if (run == null) {
            throw new RuntimeException("missing required params run")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    QueueItemImpl.class )
                    
    }
    def postPipelineRuns ( String organization, String pipeline, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    QueueItemImpl.class )
                    
    }
    def putPipelineFavorite ( String organization, String pipeline, String body, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }
        // verify required params are set
        if (body == null) {
            throw new RuntimeException("missing required params body")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "PUT", "",
                    FavoriteImpl.class )
                    
    }
    def putPipelineRun ( String organization, String pipeline, String run, String blocking, Integer timeOutInSecs, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }
        // verify required params are set
        if (run == null) {
            throw new RuntimeException("missing required params run")
        }

        if (!"null".equals(String.valueOf(blocking)))
            queryParams.put("blocking", String.valueOf(blocking))
if (!"null".equals(String.valueOf(timeOutInSecs)))
            queryParams.put("timeOutInSecs", String.valueOf(timeOutInSecs))


        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "PUT", "",
                    PipelineRun.class )
                    
    }
    def search ( String q, Closure onSuccess, Closure onFailure)  {
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
    def searchClasses ( String q, Closure onSuccess, Closure onFailure)  {
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
}
