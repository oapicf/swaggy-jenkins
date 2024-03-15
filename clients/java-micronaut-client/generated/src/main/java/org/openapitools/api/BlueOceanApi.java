/*
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.api;

import io.micronaut.http.annotation.*;
import io.micronaut.core.annotation.*;
import io.micronaut.http.client.annotation.Client;
import io.micronaut.core.convert.format.Format;
import reactor.core.publisher.Mono;
import org.openapitools.model.BranchImpl;
import org.openapitools.model.FavoriteImpl;
import org.openapitools.model.GithubOrganization;
import org.openapitools.model.GithubScm;
import org.openapitools.model.MultibranchPipeline;
import org.openapitools.model.Organisation;
import org.openapitools.model.Pipeline;
import org.openapitools.model.PipelineActivity;
import org.openapitools.model.PipelineFolderImpl;
import org.openapitools.model.PipelineImpl;
import org.openapitools.model.PipelineRun;
import org.openapitools.model.PipelineRunNode;
import org.openapitools.model.PipelineStepImpl;
import org.openapitools.model.QueueItemImpl;
import org.openapitools.model.User;
import javax.annotation.Generated;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.validation.Valid;
import javax.validation.constraints.*;

@Generated(value="org.openapitools.codegen.languages.JavaMicronautClientCodegen", date="2024-03-15T14:11:59.582308919Z[Etc/UTC]", comments = "Generator version: 7.4.0")
@Client("${openapi-micronaut-client-base-path}")
public interface BlueOceanApi {
    /**
     * Delete queue item from an organization pipeline queue
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param queue Name of the queue item (required)
     */
    @Delete(uri="/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}")
    Mono<Void> deletePipelineQueueItem(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="pipeline") @NotNull String pipeline, 
        @PathVariable(name="queue") @NotNull String queue
    );

    /**
     * Retrieve authenticated user details for an organization
     *
     * @param organization Name of the organization (required)
     * @return User
     */
    @Get(uri="/blue/rest/organizations/{organization}/user/")
    @Consumes({"application/json"})
    Mono<User> getAuthenticatedUser(
        @PathVariable(name="organization") @NotNull String organization
    );

    /**
     * Get a list of class names supported by a given class
     *
     * @param propertyClass Name of the class (required)
     * @return String
     */
    @Get(uri="/blue/rest/classes/{class}")
    @Consumes({"application/json"})
    Mono<String> getClasses(
        @PathVariable(name="class") @NotNull String propertyClass
    );

    /**
     * Retrieve JSON Web Key
     *
     * @param key Key ID received as part of JWT header field kid (required)
     * @return String
     */
    @Get(uri="/jwt-auth/jwks/{key}")
    @Consumes({"application/json"})
    Mono<String> getJsonWebKey(
        @PathVariable(name="key") @NotNull Integer key
    );

    /**
     * Retrieve JSON Web Token
     *
     * @param expiryTimeInMins Token expiry time in minutes, default: 30 minutes (optional)
     * @param maxExpiryTimeInMins Maximum token expiry time in minutes, default: 480 minutes (optional)
     * @return String
     */
    @Get(uri="/jwt-auth/token")
    @Consumes({"application/json"})
    Mono<String> getJsonWebToken(
        @QueryValue(value="expiryTimeInMins") @Nullable Integer expiryTimeInMins, 
        @QueryValue(value="maxExpiryTimeInMins") @Nullable Integer maxExpiryTimeInMins
    );

    /**
     * Retrieve organization details
     *
     * @param organization Name of the organization (required)
     * @return Organisation
     */
    @Get(uri="/blue/rest/organizations/{organization}")
    @Consumes({"application/json"})
    Mono<Organisation> getOrganisation(
        @PathVariable(name="organization") @NotNull String organization
    );

    /**
     * Retrieve all organizations details
     *
     * @return List&lt;Organisation&gt;
     */
    @Get(uri="/blue/rest/organizations/")
    @Consumes({"application/json"})
    Mono<List<Organisation>> getOrganisations();

    /**
     * Retrieve pipeline details for an organization
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @return Pipeline
     */
    @Get(uri="/blue/rest/organizations/{organization}/pipelines/{pipeline}")
    @Consumes({"application/json"})
    Mono<Pipeline> getPipeline(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="pipeline") @NotNull String pipeline
    );

    /**
     * Retrieve all activities details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @return List&lt;PipelineActivity&gt;
     */
    @Get(uri="/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities")
    @Consumes({"application/json"})
    Mono<List<PipelineActivity>> getPipelineActivities(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="pipeline") @NotNull String pipeline
    );

    /**
     * Retrieve branch details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param branch Name of the branch (required)
     * @return BranchImpl
     */
    @Get(uri="/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/")
    @Consumes({"application/json"})
    Mono<BranchImpl> getPipelineBranch(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="pipeline") @NotNull String pipeline, 
        @PathVariable(name="branch") @NotNull String branch
    );

    /**
     * Retrieve branch run details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param branch Name of the branch (required)
     * @param run Name of the run (required)
     * @return PipelineRun
     */
    @Get(uri="/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}")
    @Consumes({"application/json"})
    Mono<PipelineRun> getPipelineBranchRun(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="pipeline") @NotNull String pipeline, 
        @PathVariable(name="branch") @NotNull String branch, 
        @PathVariable(name="run") @NotNull String run
    );

    /**
     * Retrieve all branches details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @return MultibranchPipeline
     */
    @Get(uri="/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches")
    @Consumes({"application/json"})
    Mono<MultibranchPipeline> getPipelineBranches(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="pipeline") @NotNull String pipeline
    );

    /**
     * Retrieve pipeline folder for an organization
     *
     * @param organization Name of the organization (required)
     * @param folder Name of the folder (required)
     * @return PipelineFolderImpl
     */
    @Get(uri="/blue/rest/organizations/{organization}/pipelines/{folder}/")
    @Consumes({"application/json"})
    Mono<PipelineFolderImpl> getPipelineFolder(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="folder") @NotNull String folder
    );

    /**
     * Retrieve pipeline details for an organization folder
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param folder Name of the folder (required)
     * @return PipelineImpl
     */
    @Get(uri="/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}")
    @Consumes({"application/json"})
    Mono<PipelineImpl> getPipelineFolderPipeline(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="pipeline") @NotNull String pipeline, 
        @PathVariable(name="folder") @NotNull String folder
    );

    /**
     * Retrieve queue details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @return List&lt;QueueItemImpl&gt;
     */
    @Get(uri="/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue")
    @Consumes({"application/json"})
    Mono<List<QueueItemImpl>> getPipelineQueue(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="pipeline") @NotNull String pipeline
    );

    /**
     * Retrieve run details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param run Name of the run (required)
     * @return PipelineRun
     */
    @Get(uri="/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}")
    @Consumes({"application/json"})
    Mono<PipelineRun> getPipelineRun(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="pipeline") @NotNull String pipeline, 
        @PathVariable(name="run") @NotNull String run
    );

    /**
     * Get log for a pipeline run
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param run Name of the run (required)
     * @param start Start position of the log (optional)
     * @param download Set to true in order to download the file, otherwise it&#39;s passed as a response body (optional)
     * @return String
     */
    @Get(uri="/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log")
    @Consumes({"application/json"})
    Mono<String> getPipelineRunLog(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="pipeline") @NotNull String pipeline, 
        @PathVariable(name="run") @NotNull String run, 
        @QueryValue(value="start") @Nullable Integer start, 
        @QueryValue(value="download") @Nullable Boolean download
    );

    /**
     * Retrieve run node details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param run Name of the run (required)
     * @param node Name of the node (required)
     * @return PipelineRunNode
     */
    @Get(uri="/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}")
    @Consumes({"application/json"})
    Mono<PipelineRunNode> getPipelineRunNode(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="pipeline") @NotNull String pipeline, 
        @PathVariable(name="run") @NotNull String run, 
        @PathVariable(name="node") @NotNull String node
    );

    /**
     * Retrieve run node details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param run Name of the run (required)
     * @param node Name of the node (required)
     * @param step Name of the step (required)
     * @return PipelineStepImpl
     */
    @Get(uri="/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}")
    @Consumes({"application/json"})
    Mono<PipelineStepImpl> getPipelineRunNodeStep(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="pipeline") @NotNull String pipeline, 
        @PathVariable(name="run") @NotNull String run, 
        @PathVariable(name="node") @NotNull String node, 
        @PathVariable(name="step") @NotNull String step
    );

    /**
     * Get log for a pipeline run node step
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param run Name of the run (required)
     * @param node Name of the node (required)
     * @param step Name of the step (required)
     * @return String
     */
    @Get(uri="/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log")
    @Consumes({"application/json"})
    Mono<String> getPipelineRunNodeStepLog(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="pipeline") @NotNull String pipeline, 
        @PathVariable(name="run") @NotNull String run, 
        @PathVariable(name="node") @NotNull String node, 
        @PathVariable(name="step") @NotNull String step
    );

    /**
     * Retrieve run node steps details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param run Name of the run (required)
     * @param node Name of the node (required)
     * @return List&lt;PipelineStepImpl&gt;
     */
    @Get(uri="/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps")
    @Consumes({"application/json"})
    Mono<List<PipelineStepImpl>> getPipelineRunNodeSteps(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="pipeline") @NotNull String pipeline, 
        @PathVariable(name="run") @NotNull String run, 
        @PathVariable(name="node") @NotNull String node
    );

    /**
     * Retrieve run nodes details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param run Name of the run (required)
     * @return List&lt;PipelineRunNode&gt;
     */
    @Get(uri="/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes")
    @Consumes({"application/json"})
    Mono<List<PipelineRunNode>> getPipelineRunNodes(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="pipeline") @NotNull String pipeline, 
        @PathVariable(name="run") @NotNull String run
    );

    /**
     * Retrieve all runs details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @return List&lt;PipelineRun&gt;
     */
    @Get(uri="/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs")
    @Consumes({"application/json"})
    Mono<List<PipelineRun>> getPipelineRuns(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="pipeline") @NotNull String pipeline
    );

    /**
     * Retrieve all pipelines details for an organization
     *
     * @param organization Name of the organization (required)
     * @return List&lt;Pipeline&gt;
     */
    @Get(uri="/blue/rest/organizations/{organization}/pipelines/")
    @Consumes({"application/json"})
    Mono<List<Pipeline>> getPipelines(
        @PathVariable(name="organization") @NotNull String organization
    );

    /**
     * Retrieve SCM details for an organization
     *
     * @param organization Name of the organization (required)
     * @param scm Name of SCM (required)
     * @return GithubScm
     */
    @Get(uri="/blue/rest/organizations/{organization}/scm/{scm}")
    @Consumes({"application/json"})
    Mono<GithubScm> getSCM(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="scm") @NotNull String scm
    );

    /**
     * Retrieve SCM organization repositories details for an organization
     *
     * @param organization Name of the organization (required)
     * @param scm Name of SCM (required)
     * @param scmOrganisation Name of the SCM organization (required)
     * @param credentialId Credential ID (optional)
     * @param pageSize Number of items in a page (optional)
     * @param pageNumber Page number (optional)
     * @return List&lt;GithubOrganization&gt;
     */
    @Get(uri="/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories")
    @Consumes({"application/json"})
    Mono<List<GithubOrganization>> getSCMOrganisationRepositories(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="scm") @NotNull String scm, 
        @PathVariable(name="scmOrganisation") @NotNull String scmOrganisation, 
        @QueryValue(value="credentialId") @Nullable String credentialId, 
        @QueryValue(value="pageSize") @Nullable Integer pageSize, 
        @QueryValue(value="pageNumber") @Nullable Integer pageNumber
    );

    /**
     * Retrieve SCM organization repository details for an organization
     *
     * @param organization Name of the organization (required)
     * @param scm Name of SCM (required)
     * @param scmOrganisation Name of the SCM organization (required)
     * @param repository Name of the SCM repository (required)
     * @param credentialId Credential ID (optional)
     * @return List&lt;GithubOrganization&gt;
     */
    @Get(uri="/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}")
    @Consumes({"application/json"})
    Mono<List<GithubOrganization>> getSCMOrganisationRepository(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="scm") @NotNull String scm, 
        @PathVariable(name="scmOrganisation") @NotNull String scmOrganisation, 
        @PathVariable(name="repository") @NotNull String repository, 
        @QueryValue(value="credentialId") @Nullable String credentialId
    );

    /**
     * Retrieve SCM organizations details for an organization
     *
     * @param organization Name of the organization (required)
     * @param scm Name of SCM (required)
     * @param credentialId Credential ID (optional)
     * @return List&lt;GithubOrganization&gt;
     */
    @Get(uri="/blue/rest/organizations/{organization}/scm/{scm}/organizations")
    @Consumes({"application/json"})
    Mono<List<GithubOrganization>> getSCMOrganisations(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="scm") @NotNull String scm, 
        @QueryValue(value="credentialId") @Nullable String credentialId
    );

    /**
     * Retrieve user details for an organization
     *
     * @param organization Name of the organization (required)
     * @param user Name of the user (required)
     * @return User
     */
    @Get(uri="/blue/rest/organizations/{organization}/users/{user}")
    @Consumes({"application/json"})
    Mono<User> getUser(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="user") @NotNull String user
    );

    /**
     * Retrieve user favorites details for an organization
     *
     * @param user Name of the user (required)
     * @return List&lt;FavoriteImpl&gt;
     */
    @Get(uri="/blue/rest/users/{user}/favorites")
    @Consumes({"application/json"})
    Mono<List<FavoriteImpl>> getUserFavorites(
        @PathVariable(name="user") @NotNull String user
    );

    /**
     * Retrieve users details for an organization
     *
     * @param organization Name of the organization (required)
     * @return User
     */
    @Get(uri="/blue/rest/organizations/{organization}/users/")
    @Consumes({"application/json"})
    Mono<User> getUsers(
        @PathVariable(name="organization") @NotNull String organization
    );

    /**
     * Replay an organization pipeline run
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param run Name of the run (required)
     * @return QueueItemImpl
     */
    @Post(uri="/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay")
    @Consumes({"application/json"})
    Mono<QueueItemImpl> postPipelineRun(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="pipeline") @NotNull String pipeline, 
        @PathVariable(name="run") @NotNull String run
    );

    /**
     * Start a build for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @return QueueItemImpl
     */
    @Post(uri="/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs")
    @Consumes({"application/json"})
    Mono<QueueItemImpl> postPipelineRuns(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="pipeline") @NotNull String pipeline
    );

    /**
     * Favorite/unfavorite a pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param _body Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite (required)
     * @return FavoriteImpl
     */
    @Put(uri="/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite")
    @Consumes({"application/json"})
    @Produces({"application/json"})
    Mono<FavoriteImpl> putPipelineFavorite(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="pipeline") @NotNull String pipeline, 
        @Body @NotNull Boolean _body
    );

    /**
     * Stop a build of an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param run Name of the run (required)
     * @param blocking Set to true to make blocking stop, default: false (optional)
     * @param timeOutInSecs Timeout in seconds, default: 10 seconds (optional)
     * @return PipelineRun
     */
    @Put(uri="/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop")
    @Consumes({"application/json"})
    Mono<PipelineRun> putPipelineRun(
        @PathVariable(name="organization") @NotNull String organization, 
        @PathVariable(name="pipeline") @NotNull String pipeline, 
        @PathVariable(name="run") @NotNull String run, 
        @QueryValue(value="blocking") @Nullable String blocking, 
        @QueryValue(value="timeOutInSecs") @Nullable Integer timeOutInSecs
    );

    /**
     * Search for any resource details
     *
     * @param q Query string (required)
     * @return String
     */
    @Get(uri="/blue/rest/search/")
    @Consumes({"application/json"})
    Mono<String> search(
        @QueryValue(value="q") @NotNull String q
    );

    /**
     * Get classes details
     *
     * @param q Query string containing an array of class names (required)
     * @return String
     */
    @Get(uri="/blue/rest/classes/")
    @Consumes({"application/json"})
    Mono<String> searchClasses(
        @QueryValue(value="q") @NotNull String q
    );

}
