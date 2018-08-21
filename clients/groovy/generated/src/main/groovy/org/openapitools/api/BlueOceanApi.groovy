package org.openapitools.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import org.openapitools.api.ApiUtils

import org.openapitools.model.Body
import org.openapitools.model.BranchImpl
import org.openapitools.model.FavoriteImpl
import org.openapitools.model.GithubScm
import org.openapitools.model.MultibranchPipeline
import org.openapitools.model.Organisation
import org.openapitools.model.Organisations
import org.openapitools.model.Pipeline
import org.openapitools.model.PipelineActivities
import org.openapitools.model.PipelineFolderImpl
import org.openapitools.model.PipelineImpl
import org.openapitools.model.PipelineQueue
import org.openapitools.model.PipelineRun
import org.openapitools.model.PipelineRunNode
import org.openapitools.model.PipelineRunNodeSteps
import org.openapitools.model.PipelineRunNodes
import org.openapitools.model.PipelineRuns
import org.openapitools.model.PipelineStepImpl
import org.openapitools.model.Pipelines
import org.openapitools.model.QueueItemImpl
import org.openapitools.model.ScmOrganisations
import org.openapitools.model.User
import org.openapitools.model.UserFavorites

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    String.class )

    }

    def getJsonWebKey ( Integer key, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/jwt-auth/jwks/{key}"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (key == null) {
            throw new RuntimeException("missing required params key")
        }

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    String.class )

    }

    def getJsonWebToken ( Integer expiryTimeInMins, Integer maxExpiryTimeInMins, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/jwt-auth/token"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        if (!"null".equals(String.valueOf(expiryTimeInMins)))
            queryParams.put("expiryTimeInMins", String.valueOf(expiryTimeInMins))

        if (!"null".equals(String.valueOf(maxExpiryTimeInMins)))
            queryParams.put("maxExpiryTimeInMins", String.valueOf(maxExpiryTimeInMins))

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    QueueItemImpl.class )

    }

    def putPipelineFavorite ( String organization, String pipeline, Body body, Closure onSuccess, Closure onFailure)  {
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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

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

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    String.class )

    }

}
