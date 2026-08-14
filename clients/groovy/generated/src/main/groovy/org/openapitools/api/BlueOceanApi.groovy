package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.BranchImpl
import org.openapitools.model.FavoriteImpl
import org.openapitools.model.GithubOrganization
import org.openapitools.model.GithubScm
import org.openapitools.model.MultibranchPipeline
import org.openapitools.model.Organisation
import org.openapitools.model.Pipeline
import org.openapitools.model.PipelineActivity
import org.openapitools.model.PipelineFolderImpl
import org.openapitools.model.PipelineImpl
import org.openapitools.model.PipelineRun
import org.openapitools.model.PipelineRunNode
import org.openapitools.model.PipelineStepImpl
import org.openapitools.model.QueueItemImpl
import org.openapitools.model.User

class BlueOceanApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def deletePipelineQueueItem ( String organization, String pipeline, String queue, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/${pipeline}/queue/${queue}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

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





        accept = apiUtils.selectHeaderAccept([])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "DELETE", "",
                    null )

    }

    def getAuthenticatedUser ( String organization, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/user/"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    User.class )

    }

    def getClasses ( String propertyClass, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/classes/${class}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (propertyClass == null) {
            throw new RuntimeException("missing required params propertyClass")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    String.class )

    }

    def getJsonWebKey ( Integer key, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/jwt-auth/jwks/${key}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (key == null) {
            throw new RuntimeException("missing required params key")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    String.class )

    }

    def getJsonWebToken ( Integer expiryTimeInMins, Integer maxExpiryTimeInMins, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/jwt-auth/token"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType


        if (expiryTimeInMins != null) {
            queryParams.put("expiryTimeInMins", expiryTimeInMins)
        }
        if (maxExpiryTimeInMins != null) {
            queryParams.put("maxExpiryTimeInMins", maxExpiryTimeInMins)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    String.class )

    }

    def getOrganisation ( String organization, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    Organisation.class )

    }

    def getOrganisations ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType






        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    Organisation.class )

    }

    def getPipeline ( String organization, String pipeline, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/${pipeline}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    Pipeline.class )

    }

    def getPipelineActivities ( String organization, String pipeline, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/${pipeline}/activities"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    PipelineActivity.class )

    }

    def getPipelineBranch ( String organization, String pipeline, String branch, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/${pipeline}/branches/${branch}/"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

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





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    BranchImpl.class )

    }

    def getPipelineBranchRun ( String organization, String pipeline, String branch, String run, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/${pipeline}/branches/${branch}/runs/${run}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

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





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    PipelineRun.class )

    }

    def getPipelineBranches ( String organization, String pipeline, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/${pipeline}/branches"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    MultibranchPipeline.class )

    }

    def getPipelineFolder ( String organization, String folder, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/${folder}/"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (folder == null) {
            throw new RuntimeException("missing required params folder")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    PipelineFolderImpl.class )

    }

    def getPipelineFolderPipeline ( String organization, String pipeline, String folder, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/${folder}/pipelines/${pipeline}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

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





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    PipelineImpl.class )

    }

    def getPipelineQueue ( String organization, String pipeline, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/${pipeline}/queue"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    QueueItemImpl.class )

    }

    def getPipelineRun ( String organization, String pipeline, String run, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs/${run}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

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





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    PipelineRun.class )

    }

    def getPipelineRunLog ( String organization, String pipeline, String run, Integer start, Boolean download, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs/${run}/log"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

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

        if (start != null) {
            queryParams.put("start", start)
        }
        if (download != null) {
            queryParams.put("download", download)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    String.class )

    }

    def getPipelineRunNode ( String organization, String pipeline, String run, String node, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs/${run}/nodes/${node}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

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





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    PipelineRunNode.class )

    }

    def getPipelineRunNodeStep ( String organization, String pipeline, String run, String node, String step, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs/${run}/nodes/${node}/steps/${step}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

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





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    PipelineStepImpl.class )

    }

    def getPipelineRunNodeStepLog ( String organization, String pipeline, String run, String node, String step, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs/${run}/nodes/${node}/steps/${step}/log"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

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





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    String.class )

    }

    def getPipelineRunNodeSteps ( String organization, String pipeline, String run, String node, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs/${run}/nodes/${node}/steps"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

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





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    PipelineStepImpl.class )

    }

    def getPipelineRunNodes ( String organization, String pipeline, String run, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs/${run}/nodes"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

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





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    PipelineRunNode.class )

    }

    def getPipelineRuns ( String organization, String pipeline, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    PipelineRun.class )

    }

    def getPipelines ( String organization, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    Pipeline.class )

    }

    def getSCM ( String organization, String scm, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/scm/${scm}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (scm == null) {
            throw new RuntimeException("missing required params scm")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    GithubScm.class )

    }

    def getSCMOrganisationRepositories ( String organization, String scm, String scmOrganisation, String credentialId, Integer pageSize, Integer pageNumber, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/scm/${scm}/organizations/${scmOrganisation}/repositories"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

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

        if (credentialId != null) {
            queryParams.put("credentialId", credentialId)
        }
        if (pageSize != null) {
            queryParams.put("pageSize", pageSize)
        }
        if (pageNumber != null) {
            queryParams.put("pageNumber", pageNumber)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    GithubOrganization.class )

    }

    def getSCMOrganisationRepository ( String organization, String scm, String scmOrganisation, String repository, String credentialId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/scm/${scm}/organizations/${scmOrganisation}/repositories/${repository}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

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

        if (credentialId != null) {
            queryParams.put("credentialId", credentialId)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    GithubOrganization.class )

    }

    def getSCMOrganisations ( String organization, String scm, String credentialId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/scm/${scm}/organizations"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (scm == null) {
            throw new RuntimeException("missing required params scm")
        }

        if (credentialId != null) {
            queryParams.put("credentialId", credentialId)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    GithubOrganization.class )

    }

    def getUser ( String organization, String user, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/users/${user}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (user == null) {
            throw new RuntimeException("missing required params user")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    User.class )

    }

    def getUserFavorites ( String user, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/users/${user}/favorites"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (user == null) {
            throw new RuntimeException("missing required params user")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    FavoriteImpl.class )

    }

    def getUsers ( String organization, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/users/"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    User.class )

    }

    def postPipelineRun ( String organization, String pipeline, String run, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs/${run}/replay"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

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





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    QueueItemImpl.class )

    }

    def postPipelineRuns ( String organization, String pipeline, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (organization == null) {
            throw new RuntimeException("missing required params organization")
        }
        // verify required params are set
        if (pipeline == null) {
            throw new RuntimeException("missing required params pipeline")
        }





        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "POST", "",
                    QueueItemImpl.class )

    }

    def putPipelineFavorite ( String organization, String pipeline, Boolean body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/${pipeline}/favorite"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

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



        contentType = 'application/json';
        bodyParams = body


        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "PUT", "",
                    FavoriteImpl.class )

    }

    def putPipelineRun ( String organization, String pipeline, String run, String blocking, Integer timeOutInSecs, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs/${run}/stop"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

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

        if (blocking != null) {
            queryParams.put("blocking", blocking)
        }
        if (timeOutInSecs != null) {
            queryParams.put("timeOutInSecs", timeOutInSecs)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "PUT", "",
                    PipelineRun.class )

    }

    def search ( String q, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/search/"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (q == null) {
            throw new RuntimeException("missing required params q")
        }

        if (q != null) {
            queryParams.put("q", q)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    String.class )

    }

    def searchClasses ( String q, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/blue/rest/classes/"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (q == null) {
            throw new RuntimeException("missing required params q")
        }

        if (q != null) {
            queryParams.put("q", q)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "",
                    String.class )

    }

}
