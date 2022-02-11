package org.openapitools.server.api.verticle;

import org.openapitools.server.api.model.BranchImpl;
import org.openapitools.server.api.model.FavoriteImpl;
import org.openapitools.server.api.model.GithubOrganization;
import org.openapitools.server.api.model.GithubScm;
import org.openapitools.server.api.MainApiException;
import org.openapitools.server.api.model.MultibranchPipeline;
import org.openapitools.server.api.model.Organisation;
import org.openapitools.server.api.model.Pipeline;
import org.openapitools.server.api.model.PipelineActivity;
import org.openapitools.server.api.model.PipelineFolderImpl;
import org.openapitools.server.api.model.PipelineImpl;
import org.openapitools.server.api.model.PipelineRun;
import org.openapitools.server.api.model.PipelineRunNode;
import org.openapitools.server.api.model.PipelineStepImpl;
import org.openapitools.server.api.model.QueueItemImpl;
import org.openapitools.server.api.model.User;

import io.vertx.core.AsyncResult;
import io.vertx.core.Handler;

import java.util.List;
import java.util.Map;

public interface BlueOceanApi  {
    //deletePipelineQueueItem
    void deletePipelineQueueItem(String organization, String pipeline, String queue, Handler<AsyncResult<Void>> handler);

    //getAuthenticatedUser
    void getAuthenticatedUser(String organization, Handler<AsyncResult<User>> handler);

    //getClasses
    void getClasses(String propertyClass, Handler<AsyncResult<String>> handler);

    //getJsonWebKey
    void getJsonWebKey(Integer key, Handler<AsyncResult<String>> handler);

    //getJsonWebToken
    void getJsonWebToken(Integer expiryTimeInMins, Integer maxExpiryTimeInMins, Handler<AsyncResult<String>> handler);

    //getOrganisation
    void getOrganisation(String organization, Handler<AsyncResult<Organisation>> handler);

    //getOrganisations
    void getOrganisations(Handler<AsyncResult<List<Organisation>>> handler);

    //getPipeline
    void getPipeline(String organization, String pipeline, Handler<AsyncResult<Pipeline>> handler);

    //getPipelineActivities
    void getPipelineActivities(String organization, String pipeline, Handler<AsyncResult<List<PipelineActivity>>> handler);

    //getPipelineBranch
    void getPipelineBranch(String organization, String pipeline, String branch, Handler<AsyncResult<BranchImpl>> handler);

    //getPipelineBranchRun
    void getPipelineBranchRun(String organization, String pipeline, String branch, String run, Handler<AsyncResult<PipelineRun>> handler);

    //getPipelineBranches
    void getPipelineBranches(String organization, String pipeline, Handler<AsyncResult<MultibranchPipeline>> handler);

    //getPipelineFolder
    void getPipelineFolder(String organization, String folder, Handler<AsyncResult<PipelineFolderImpl>> handler);

    //getPipelineFolderPipeline
    void getPipelineFolderPipeline(String organization, String pipeline, String folder, Handler<AsyncResult<PipelineImpl>> handler);

    //getPipelineQueue
    void getPipelineQueue(String organization, String pipeline, Handler<AsyncResult<List<QueueItemImpl>>> handler);

    //getPipelineRun
    void getPipelineRun(String organization, String pipeline, String run, Handler<AsyncResult<PipelineRun>> handler);

    //getPipelineRunLog
    void getPipelineRunLog(String organization, String pipeline, String run, Integer start, Boolean download, Handler<AsyncResult<String>> handler);

    //getPipelineRunNode
    void getPipelineRunNode(String organization, String pipeline, String run, String node, Handler<AsyncResult<PipelineRunNode>> handler);

    //getPipelineRunNodeStep
    void getPipelineRunNodeStep(String organization, String pipeline, String run, String node, String step, Handler<AsyncResult<PipelineStepImpl>> handler);

    //getPipelineRunNodeStepLog
    void getPipelineRunNodeStepLog(String organization, String pipeline, String run, String node, String step, Handler<AsyncResult<String>> handler);

    //getPipelineRunNodeSteps
    void getPipelineRunNodeSteps(String organization, String pipeline, String run, String node, Handler<AsyncResult<List<PipelineStepImpl>>> handler);

    //getPipelineRunNodes
    void getPipelineRunNodes(String organization, String pipeline, String run, Handler<AsyncResult<List<PipelineRunNode>>> handler);

    //getPipelineRuns
    void getPipelineRuns(String organization, String pipeline, Handler<AsyncResult<List<PipelineRun>>> handler);

    //getPipelines
    void getPipelines(String organization, Handler<AsyncResult<List<Pipeline>>> handler);

    //getSCM
    void getSCM(String organization, String scm, Handler<AsyncResult<GithubScm>> handler);

    //getSCMOrganisationRepositories
    void getSCMOrganisationRepositories(String organization, String scm, String scmOrganisation, String credentialId, Integer pageSize, Integer pageNumber, Handler<AsyncResult<List<GithubOrganization>>> handler);

    //getSCMOrganisationRepository
    void getSCMOrganisationRepository(String organization, String scm, String scmOrganisation, String repository, String credentialId, Handler<AsyncResult<List<GithubOrganization>>> handler);

    //getSCMOrganisations
    void getSCMOrganisations(String organization, String scm, String credentialId, Handler<AsyncResult<List<GithubOrganization>>> handler);

    //getUser
    void getUser(String organization, String user, Handler<AsyncResult<User>> handler);

    //getUserFavorites
    void getUserFavorites(String user, Handler<AsyncResult<List<FavoriteImpl>>> handler);

    //getUsers
    void getUsers(String organization, Handler<AsyncResult<User>> handler);

    //postPipelineRun
    void postPipelineRun(String organization, String pipeline, String run, Handler<AsyncResult<QueueItemImpl>> handler);

    //postPipelineRuns
    void postPipelineRuns(String organization, String pipeline, Handler<AsyncResult<QueueItemImpl>> handler);

    //putPipelineFavorite
    void putPipelineFavorite(String organization, String pipeline, Boolean body, Handler<AsyncResult<FavoriteImpl>> handler);

    //putPipelineRun
    void putPipelineRun(String organization, String pipeline, String run, String blocking, Integer timeOutInSecs, Handler<AsyncResult<PipelineRun>> handler);

    //search
    void search(String q, Handler<AsyncResult<String>> handler);

    //searchClasses
    void searchClasses(String q, Handler<AsyncResult<String>> handler);

}
