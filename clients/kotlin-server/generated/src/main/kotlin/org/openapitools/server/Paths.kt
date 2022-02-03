/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.1.1
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.server

import io.ktor.locations.*
import org.openapitools.server.models.*

@KtorExperimentalLocationsAPI
object Paths {
    /**
     * Retrieve CSRF protection token
     */
    @Location("/crumbIssuer/api/json") object getCrumb

    /**
     * Delete queue item from an organization pipeline queue
     * @param organization Name of the organization 
     * @param pipeline Name of the pipeline 
     * @param queue Name of the queue item 
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}") class deletePipelineQueueItem(val organization: kotlin.String, val pipeline: kotlin.String, val queue: kotlin.String)

    /**
     * Retrieve authenticated user details for an organization
     * @param organization Name of the organization 
     */
    @Location("/blue/rest/organizations/{organization}/user/") class getAuthenticatedUser(val organization: kotlin.String)

    /**
     * Get a list of class names supported by a given class
     * @param propertyClass Name of the class 
     */
    @Location("/blue/rest/classes/{class}") class getClasses(val propertyClass: kotlin.String)

    /**
     * Retrieve JSON Web Key
     * @param key Key ID received as part of JWT header field kid 
     */
    @Location("/jwt-auth/jwks/{key}") class getJsonWebKey(val key: kotlin.Int)

    /**
     * Retrieve JSON Web Token
     * @param expiryTimeInMins Token expiry time in minutes, default: 30 minutes (optional)
     * @param maxExpiryTimeInMins Maximum token expiry time in minutes, default: 480 minutes (optional)
     */
    @Location("/jwt-auth/token") class getJsonWebToken(val expiryTimeInMins: kotlin.Int? = null, val maxExpiryTimeInMins: kotlin.Int? = null)

    /**
     * Retrieve organization details
     * @param organization Name of the organization 
     */
    @Location("/blue/rest/organizations/{organization}") class getOrganisation(val organization: kotlin.String)

    /**
     * Retrieve all organizations details
     */
    @Location("/blue/rest/organizations/") object getOrganisations

    /**
     * Retrieve pipeline details for an organization
     * @param organization Name of the organization 
     * @param pipeline Name of the pipeline 
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/{pipeline}") class getPipeline(val organization: kotlin.String, val pipeline: kotlin.String)

    /**
     * Retrieve all activities details for an organization pipeline
     * @param organization Name of the organization 
     * @param pipeline Name of the pipeline 
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities") class getPipelineActivities(val organization: kotlin.String, val pipeline: kotlin.String)

    /**
     * Retrieve branch details for an organization pipeline
     * @param organization Name of the organization 
     * @param pipeline Name of the pipeline 
     * @param branch Name of the branch 
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/") class getPipelineBranch(val organization: kotlin.String, val pipeline: kotlin.String, val branch: kotlin.String)

    /**
     * Retrieve branch run details for an organization pipeline
     * @param organization Name of the organization 
     * @param pipeline Name of the pipeline 
     * @param branch Name of the branch 
     * @param run Name of the run 
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}") class getPipelineBranchRun(val organization: kotlin.String, val pipeline: kotlin.String, val branch: kotlin.String, val run: kotlin.String)

    /**
     * Retrieve all branches details for an organization pipeline
     * @param organization Name of the organization 
     * @param pipeline Name of the pipeline 
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches") class getPipelineBranches(val organization: kotlin.String, val pipeline: kotlin.String)

    /**
     * Retrieve pipeline folder for an organization
     * @param organization Name of the organization 
     * @param folder Name of the folder 
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/{folder}/") class getPipelineFolder(val organization: kotlin.String, val folder: kotlin.String)

    /**
     * Retrieve pipeline details for an organization folder
     * @param organization Name of the organization 
     * @param pipeline Name of the pipeline 
     * @param folder Name of the folder 
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}") class getPipelineFolderPipeline(val organization: kotlin.String, val pipeline: kotlin.String, val folder: kotlin.String)

    /**
     * Retrieve queue details for an organization pipeline
     * @param organization Name of the organization 
     * @param pipeline Name of the pipeline 
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue") class getPipelineQueue(val organization: kotlin.String, val pipeline: kotlin.String)

    /**
     * Retrieve run details for an organization pipeline
     * @param organization Name of the organization 
     * @param pipeline Name of the pipeline 
     * @param run Name of the run 
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}") class getPipelineRun(val organization: kotlin.String, val pipeline: kotlin.String, val run: kotlin.String)

    /**
     * Get log for a pipeline run
     * @param organization Name of the organization 
     * @param pipeline Name of the pipeline 
     * @param run Name of the run 
     * @param start Start position of the log (optional)
     * @param download Set to true in order to download the file, otherwise it&#39;s passed as a response body (optional)
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log") class getPipelineRunLog(val organization: kotlin.String, val pipeline: kotlin.String, val run: kotlin.String, val start: kotlin.Int? = null, val download: kotlin.Boolean? = null)

    /**
     * Retrieve run node details for an organization pipeline
     * @param organization Name of the organization 
     * @param pipeline Name of the pipeline 
     * @param run Name of the run 
     * @param node Name of the node 
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}") class getPipelineRunNode(val organization: kotlin.String, val pipeline: kotlin.String, val run: kotlin.String, val node: kotlin.String)

    /**
     * Retrieve run node details for an organization pipeline
     * @param organization Name of the organization 
     * @param pipeline Name of the pipeline 
     * @param run Name of the run 
     * @param node Name of the node 
     * @param step Name of the step 
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}") class getPipelineRunNodeStep(val organization: kotlin.String, val pipeline: kotlin.String, val run: kotlin.String, val node: kotlin.String, val step: kotlin.String)

    /**
     * Get log for a pipeline run node step
     * @param organization Name of the organization 
     * @param pipeline Name of the pipeline 
     * @param run Name of the run 
     * @param node Name of the node 
     * @param step Name of the step 
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log") class getPipelineRunNodeStepLog(val organization: kotlin.String, val pipeline: kotlin.String, val run: kotlin.String, val node: kotlin.String, val step: kotlin.String)

    /**
     * Retrieve run node steps details for an organization pipeline
     * @param organization Name of the organization 
     * @param pipeline Name of the pipeline 
     * @param run Name of the run 
     * @param node Name of the node 
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps") class getPipelineRunNodeSteps(val organization: kotlin.String, val pipeline: kotlin.String, val run: kotlin.String, val node: kotlin.String)

    /**
     * Retrieve run nodes details for an organization pipeline
     * @param organization Name of the organization 
     * @param pipeline Name of the pipeline 
     * @param run Name of the run 
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes") class getPipelineRunNodes(val organization: kotlin.String, val pipeline: kotlin.String, val run: kotlin.String)

    /**
     * Retrieve all runs details for an organization pipeline
     * @param organization Name of the organization 
     * @param pipeline Name of the pipeline 
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs") class getPipelineRuns(val organization: kotlin.String, val pipeline: kotlin.String)

    /**
     * Retrieve all pipelines details for an organization
     * @param organization Name of the organization 
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/") class getPipelines(val organization: kotlin.String)

    /**
     * Retrieve SCM details for an organization
     * @param organization Name of the organization 
     * @param scm Name of SCM 
     */
    @Location("/blue/rest/organizations/{organization}/scm/{scm}") class getSCM(val organization: kotlin.String, val scm: kotlin.String)

    /**
     * Retrieve SCM organization repositories details for an organization
     * @param organization Name of the organization 
     * @param scm Name of SCM 
     * @param scmOrganisation Name of the SCM organization 
     * @param credentialId Credential ID (optional)
     * @param pageSize Number of items in a page (optional)
     * @param pageNumber Page number (optional)
     */
    @Location("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories") class getSCMOrganisationRepositories(val organization: kotlin.String, val scm: kotlin.String, val scmOrganisation: kotlin.String, val credentialId: kotlin.String? = null, val pageSize: kotlin.Int? = null, val pageNumber: kotlin.Int? = null)

    /**
     * Retrieve SCM organization repository details for an organization
     * @param organization Name of the organization 
     * @param scm Name of SCM 
     * @param scmOrganisation Name of the SCM organization 
     * @param repository Name of the SCM repository 
     * @param credentialId Credential ID (optional)
     */
    @Location("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}") class getSCMOrganisationRepository(val organization: kotlin.String, val scm: kotlin.String, val scmOrganisation: kotlin.String, val repository: kotlin.String, val credentialId: kotlin.String? = null)

    /**
     * Retrieve SCM organizations details for an organization
     * @param organization Name of the organization 
     * @param scm Name of SCM 
     * @param credentialId Credential ID (optional)
     */
    @Location("/blue/rest/organizations/{organization}/scm/{scm}/organizations") class getSCMOrganisations(val organization: kotlin.String, val scm: kotlin.String, val credentialId: kotlin.String? = null)

    /**
     * Retrieve user details for an organization
     * @param organization Name of the organization 
     * @param user Name of the user 
     */
    @Location("/blue/rest/organizations/{organization}/users/{user}") class getUser(val organization: kotlin.String, val user: kotlin.String)

    /**
     * Retrieve user favorites details for an organization
     * @param user Name of the user 
     */
    @Location("/blue/rest/users/{user}/favorites") class getUserFavorites(val user: kotlin.String)

    /**
     * Retrieve users details for an organization
     * @param organization Name of the organization 
     */
    @Location("/blue/rest/organizations/{organization}/users/") class getUsers(val organization: kotlin.String)

    /**
     * Replay an organization pipeline run
     * @param organization Name of the organization 
     * @param pipeline Name of the pipeline 
     * @param run Name of the run 
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay") class postPipelineRun(val organization: kotlin.String, val pipeline: kotlin.String, val run: kotlin.String)

    /**
     * Start a build for an organization pipeline
     * @param organization Name of the organization 
     * @param pipeline Name of the pipeline 
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs") class postPipelineRuns(val organization: kotlin.String, val pipeline: kotlin.String)

    /**
     * Favorite/unfavorite a pipeline
     * @param organization Name of the organization 
     * @param pipeline Name of the pipeline 
     * @param UNKNOWN_BASE_TYPE Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite 
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite") class putPipelineFavorite(val organization: kotlin.String, val pipeline: kotlin.String, val UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE?)

    /**
     * Stop a build of an organization pipeline
     * @param organization Name of the organization 
     * @param pipeline Name of the pipeline 
     * @param run Name of the run 
     * @param blocking Set to true to make blocking stop, default: false (optional)
     * @param timeOutInSecs Timeout in seconds, default: 10 seconds (optional)
     */
    @Location("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop") class putPipelineRun(val organization: kotlin.String, val pipeline: kotlin.String, val run: kotlin.String, val blocking: kotlin.String? = null, val timeOutInSecs: kotlin.Int? = null)

    /**
     * Search for any resource details
     * @param q Query string 
     */
    @Location("/blue/rest/search/") class search(val q: kotlin.String)

    /**
     * Get classes details
     * @param q Query string containing an array of class names 
     */
    @Location("/blue/rest/classes/") class searchClasses(val q: kotlin.String)

    /**
     * Retrieve computer details
     * @param depth Recursion depth in response model 
     */
    @Location("/computer/api/json") class getComputer(val depth: kotlin.Int)

    /**
     * Retrieve Jenkins details
     */
    @Location("/api/json") object getJenkins

    /**
     * Retrieve job details
     * @param name Name of the job 
     */
    @Location("/job/{name}/api/json") class getJob(val name: kotlin.String)

    /**
     * Retrieve job configuration
     * @param name Name of the job 
     */
    @Location("/job/{name}/config.xml") class getJobConfig(val name: kotlin.String)

    /**
     * Retrieve job&#39;s last build details
     * @param name Name of the job 
     */
    @Location("/job/{name}/lastBuild/api/json") class getJobLastBuild(val name: kotlin.String)

    /**
     * Retrieve job&#39;s build progressive text output
     * @param name Name of the job 
     * @param number Build number 
     * @param start Starting point of progressive text output 
     */
    @Location("/job/{name}/{number}/logText/progressiveText") class getJobProgressiveText(val name: kotlin.String, val number: kotlin.String, val start: kotlin.String)

    /**
     * Retrieve queue details
     */
    @Location("/queue/api/json") object getQueue

    /**
     * Retrieve queued item details
     * @param number Queue number 
     */
    @Location("/queue/item/{number}/api/json") class getQueueItem(val number: kotlin.String)

    /**
     * Retrieve view details
     * @param name Name of the view 
     */
    @Location("/view/{name}/api/json") class getView(val name: kotlin.String)

    /**
     * Retrieve view configuration
     * @param name Name of the view 
     */
    @Location("/view/{name}/config.xml") class getViewConfig(val name: kotlin.String)

    /**
     * Retrieve Jenkins headers
     */
    @Location("/api/json") object headJenkins

    /**
     * Create a new job using job configuration, or copied from an existing job
     * @param name Name of the new job 
     * @param from Existing job to copy from (optional)
     * @param mode Set to &#39;copy&#39; for copying an existing job (optional)
     * @param jenkinsCrumb CSRF protection token (optional)
     * @param contentType Content type header application/xml (optional)
     * @param body Job configuration in config.xml format (optional)
     */
    @Location("/createItem") class postCreateItem(val name: kotlin.String, val from: kotlin.String? = null, val mode: kotlin.String? = null, val jenkinsCrumb: kotlin.String? = null, val contentType: kotlin.String? = null, val body: kotlin.String? = null)

    /**
     * Create a new view using view configuration
     * @param name Name of the new view 
     * @param jenkinsCrumb CSRF protection token (optional)
     * @param contentType Content type header application/xml (optional)
     * @param body View configuration in config.xml format (optional)
     */
    @Location("/createView") class postCreateView(val name: kotlin.String, val jenkinsCrumb: kotlin.String? = null, val contentType: kotlin.String? = null, val body: kotlin.String? = null)

    /**
     * Build a job
     * @param name Name of the job 
     * @param json  
     * @param token  (optional)
     * @param jenkinsCrumb CSRF protection token (optional)
     */
    @Location("/job/{name}/build") class postJobBuild(val name: kotlin.String, val json: kotlin.String, val token: kotlin.String? = null, val jenkinsCrumb: kotlin.String? = null)

    /**
     * Update job configuration
     * @param name Name of the job 
     * @param body Job configuration in config.xml format 
     * @param jenkinsCrumb CSRF protection token (optional)
     */
    @Location("/job/{name}/config.xml") class postJobConfig(val name: kotlin.String, val body: kotlin.String, val jenkinsCrumb: kotlin.String? = null)

    /**
     * Delete a job
     * @param name Name of the job 
     * @param jenkinsCrumb CSRF protection token (optional)
     */
    @Location("/job/{name}/doDelete") class postJobDelete(val name: kotlin.String, val jenkinsCrumb: kotlin.String? = null)

    /**
     * Disable a job
     * @param name Name of the job 
     * @param jenkinsCrumb CSRF protection token (optional)
     */
    @Location("/job/{name}/disable") class postJobDisable(val name: kotlin.String, val jenkinsCrumb: kotlin.String? = null)

    /**
     * Enable a job
     * @param name Name of the job 
     * @param jenkinsCrumb CSRF protection token (optional)
     */
    @Location("/job/{name}/enable") class postJobEnable(val name: kotlin.String, val jenkinsCrumb: kotlin.String? = null)

    /**
     * Stop a job
     * @param name Name of the job 
     * @param jenkinsCrumb CSRF protection token (optional)
     */
    @Location("/job/{name}/lastBuild/stop") class postJobLastBuildStop(val name: kotlin.String, val jenkinsCrumb: kotlin.String? = null)

    /**
     * Update view configuration
     * @param name Name of the view 
     * @param body View configuration in config.xml format 
     * @param jenkinsCrumb CSRF protection token (optional)
     */
    @Location("/view/{name}/config.xml") class postViewConfig(val name: kotlin.String, val body: kotlin.String, val jenkinsCrumb: kotlin.String? = null)

}
