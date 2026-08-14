package org.openapitools.api.interfaces;

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
import org.openapitools.model.*;
import java.util.List;
import java.util.Map;
import java.time.OffsetDateTime;
import java.time.LocalDate;
import java.time.LocalDateTime;
import javax.annotation.Generated;


@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public interface BlueService {

    /**
     * 
     * Delete queue item from an organization pipeline queue
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param queue Name of the queue item (required)
     * @return void
     */
    void deletePipelineQueueItem(
        String organization,
        String pipeline,
        String queue
    );

    /**
     * 
     * Retrieve authenticated user details for an organization
     *
     * @param organization Name of the organization (required)
     * @return User
     */
    User getAuthenticatedUser(
        String organization
    );

    /**
     * 
     * Get a list of class names supported by a given class
     *
     * @param propertyClass Name of the class (required)
     * @return String
     */
    String getClasses(
        String propertyClass
    );

    /**
     * 
     * Retrieve organization details
     *
     * @param organization Name of the organization (required)
     * @return Organisation
     */
    Organisation getOrganisation(
        String organization
    );

    /**
     * 
     * Retrieve all organizations details
     *
     * @return List<Organisation>
     */
    List<Organisation> getOrganisations(
    );

    /**
     * 
     * Retrieve pipeline details for an organization
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @return Pipeline
     */
    Pipeline getPipeline(
        String organization,
        String pipeline
    );

    /**
     * 
     * Retrieve all activities details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @return List<PipelineActivity>
     */
    List<PipelineActivity> getPipelineActivities(
        String organization,
        String pipeline
    );

    /**
     * 
     * Retrieve branch details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param branch Name of the branch (required)
     * @return BranchImpl
     */
    BranchImpl getPipelineBranch(
        String organization,
        String pipeline,
        String branch
    );

    /**
     * 
     * Retrieve branch run details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param branch Name of the branch (required)
     * @param run Name of the run (required)
     * @return PipelineRun
     */
    PipelineRun getPipelineBranchRun(
        String organization,
        String pipeline,
        String branch,
        String run
    );

    /**
     * 
     * Retrieve all branches details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @return MultibranchPipeline
     */
    MultibranchPipeline getPipelineBranches(
        String organization,
        String pipeline
    );

    /**
     * 
     * Retrieve pipeline folder for an organization
     *
     * @param organization Name of the organization (required)
     * @param folder Name of the folder (required)
     * @return PipelineFolderImpl
     */
    PipelineFolderImpl getPipelineFolder(
        String organization,
        String folder
    );

    /**
     * 
     * Retrieve pipeline details for an organization folder
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param folder Name of the folder (required)
     * @return PipelineImpl
     */
    PipelineImpl getPipelineFolderPipeline(
        String organization,
        String pipeline,
        String folder
    );

    /**
     * 
     * Retrieve queue details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @return List<QueueItemImpl>
     */
    List<QueueItemImpl> getPipelineQueue(
        String organization,
        String pipeline
    );

    /**
     * 
     * Retrieve run details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param run Name of the run (required)
     * @return PipelineRun
     */
    PipelineRun getPipelineRun(
        String organization,
        String pipeline,
        String run
    );

    /**
     * 
     * Get log for a pipeline run
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param run Name of the run (required)
     * @param start Start position of the log (optional)
     * @param download Set to true in order to download the file, otherwise it&#39;s passed as a response body (optional)
     * @return String
     */
    String getPipelineRunLog(
        String organization,
        String pipeline,
        String run,
        Integer start,
        Boolean download
    );

    /**
     * 
     * Retrieve run node details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param run Name of the run (required)
     * @param node Name of the node (required)
     * @return PipelineRunNode
     */
    PipelineRunNode getPipelineRunNode(
        String organization,
        String pipeline,
        String run,
        String node
    );

    /**
     * 
     * Retrieve run node details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param run Name of the run (required)
     * @param node Name of the node (required)
     * @param step Name of the step (required)
     * @return PipelineStepImpl
     */
    PipelineStepImpl getPipelineRunNodeStep(
        String organization,
        String pipeline,
        String run,
        String node,
        String step
    );

    /**
     * 
     * Get log for a pipeline run node step
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param run Name of the run (required)
     * @param node Name of the node (required)
     * @param step Name of the step (required)
     * @return String
     */
    String getPipelineRunNodeStepLog(
        String organization,
        String pipeline,
        String run,
        String node,
        String step
    );

    /**
     * 
     * Retrieve run node steps details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param run Name of the run (required)
     * @param node Name of the node (required)
     * @return List<PipelineStepImpl>
     */
    List<PipelineStepImpl> getPipelineRunNodeSteps(
        String organization,
        String pipeline,
        String run,
        String node
    );

    /**
     * 
     * Retrieve run nodes details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param run Name of the run (required)
     * @return List<PipelineRunNode>
     */
    List<PipelineRunNode> getPipelineRunNodes(
        String organization,
        String pipeline,
        String run
    );

    /**
     * 
     * Retrieve all runs details for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @return List<PipelineRun>
     */
    List<PipelineRun> getPipelineRuns(
        String organization,
        String pipeline
    );

    /**
     * 
     * Retrieve all pipelines details for an organization
     *
     * @param organization Name of the organization (required)
     * @return List<Pipeline>
     */
    List<Pipeline> getPipelines(
        String organization
    );

    /**
     * 
     * Retrieve SCM details for an organization
     *
     * @param organization Name of the organization (required)
     * @param scm Name of SCM (required)
     * @return GithubScm
     */
    GithubScm getSCM(
        String organization,
        String scm
    );

    /**
     * 
     * Retrieve SCM organization repositories details for an organization
     *
     * @param organization Name of the organization (required)
     * @param scm Name of SCM (required)
     * @param scmOrganisation Name of the SCM organization (required)
     * @param credentialId Credential ID (optional)
     * @param pageSize Number of items in a page (optional)
     * @param pageNumber Page number (optional)
     * @return List<GithubOrganization>
     */
    List<GithubOrganization> getSCMOrganisationRepositories(
        String organization,
        String scm,
        String scmOrganisation,
        String credentialId,
        Integer pageSize,
        Integer pageNumber
    );

    /**
     * 
     * Retrieve SCM organization repository details for an organization
     *
     * @param organization Name of the organization (required)
     * @param scm Name of SCM (required)
     * @param scmOrganisation Name of the SCM organization (required)
     * @param repository Name of the SCM repository (required)
     * @param credentialId Credential ID (optional)
     * @return List<GithubOrganization>
     */
    List<GithubOrganization> getSCMOrganisationRepository(
        String organization,
        String scm,
        String scmOrganisation,
        String repository,
        String credentialId
    );

    /**
     * 
     * Retrieve SCM organizations details for an organization
     *
     * @param organization Name of the organization (required)
     * @param scm Name of SCM (required)
     * @param credentialId Credential ID (optional)
     * @return List<GithubOrganization>
     */
    List<GithubOrganization> getSCMOrganisations(
        String organization,
        String scm,
        String credentialId
    );

    /**
     * 
     * Retrieve user details for an organization
     *
     * @param organization Name of the organization (required)
     * @param user Name of the user (required)
     * @return User
     */
    User getUser(
        String organization,
        String user
    );

    /**
     * 
     * Retrieve user favorites details for an organization
     *
     * @param user Name of the user (required)
     * @return List<FavoriteImpl>
     */
    List<FavoriteImpl> getUserFavorites(
        String user
    );

    /**
     * 
     * Retrieve users details for an organization
     *
     * @param organization Name of the organization (required)
     * @return User
     */
    User getUsers(
        String organization
    );

    /**
     * 
     * Replay an organization pipeline run
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param run Name of the run (required)
     * @return QueueItemImpl
     */
    QueueItemImpl postPipelineRun(
        String organization,
        String pipeline,
        String run
    );

    /**
     * 
     * Start a build for an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @return QueueItemImpl
     */
    QueueItemImpl postPipelineRuns(
        String organization,
        String pipeline
    );

    /**
     * 
     * Favorite/unfavorite a pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param body Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite (required)
     * @return FavoriteImpl
     */
    FavoriteImpl putPipelineFavorite(
        String organization,
        String pipeline,
        Boolean body
    );

    /**
     * 
     * Stop a build of an organization pipeline
     *
     * @param organization Name of the organization (required)
     * @param pipeline Name of the pipeline (required)
     * @param run Name of the run (required)
     * @param blocking Set to true to make blocking stop, default: false (optional)
     * @param timeOutInSecs Timeout in seconds, default: 10 seconds (optional)
     * @return PipelineRun
     */
    PipelineRun putPipelineRun(
        String organization,
        String pipeline,
        String run,
        String blocking,
        Integer timeOutInSecs
    );

    /**
     * 
     * Search for any resource details
     *
     * @param q Query string (required)
     * @return String
     */
    String search(
        String q
    );

    /**
     * 
     * Get classes details
     *
     * @param q Query string containing an array of class names (required)
     * @return String
     */
    String searchClasses(
        String q
    );
}
