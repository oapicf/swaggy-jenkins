package io.swagger.server.api.verticle;

import io.swagger.server.api.model.BranchImpl;
import io.swagger.server.api.model.FavoriteImpl;
import io.swagger.server.api.model.GithubScm;
import io.swagger.server.api.MainApiException;
import io.swagger.server.api.model.MultibranchPipeline;
import io.swagger.server.api.model.Organisation;
import io.swagger.server.api.model.Organisations;
import io.swagger.server.api.model.Pipeline;
import io.swagger.server.api.model.PipelineActivities;
import io.swagger.server.api.model.PipelineFolderImpl;
import io.swagger.server.api.model.PipelineImpl;
import io.swagger.server.api.model.PipelineQueue;
import io.swagger.server.api.model.PipelineRun;
import io.swagger.server.api.model.PipelineRunNode;
import io.swagger.server.api.model.PipelineRunNodeSteps;
import io.swagger.server.api.model.PipelineRunNodes;
import io.swagger.server.api.model.PipelineRuns;
import io.swagger.server.api.model.PipelineStepImpl;
import io.swagger.server.api.model.Pipelines;
import io.swagger.server.api.model.QueueItemImpl;
import io.swagger.server.api.model.ScmOrganisations;
import io.swagger.server.api.model.User;
import io.swagger.server.api.model.UserFavorites;

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
    
    //getOrganisation
    void getOrganisation(String organization, Handler<AsyncResult<Organisation>> handler);
    
    //getOrganisations
    void getOrganisations(Handler<AsyncResult<Organisations>> handler);
    
    //getPipeline
    void getPipeline(String organization, String pipeline, Handler<AsyncResult<Pipeline>> handler);
    
    //getPipelineActivities
    void getPipelineActivities(String organization, String pipeline, Handler<AsyncResult<PipelineActivities>> handler);
    
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
    void getPipelineQueue(String organization, String pipeline, Handler<AsyncResult<PipelineQueue>> handler);
    
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
    void getPipelineRunNodeSteps(String organization, String pipeline, String run, String node, Handler<AsyncResult<PipelineRunNodeSteps>> handler);
    
    //getPipelineRunNodes
    void getPipelineRunNodes(String organization, String pipeline, String run, Handler<AsyncResult<PipelineRunNodes>> handler);
    
    //getPipelineRuns
    void getPipelineRuns(String organization, String pipeline, Handler<AsyncResult<PipelineRuns>> handler);
    
    //getPipelines
    void getPipelines(String organization, Handler<AsyncResult<Pipelines>> handler);
    
    //getSCM
    void getSCM(String organization, String scm, Handler<AsyncResult<GithubScm>> handler);
    
    //getSCMOrganisationRepositories
    void getSCMOrganisationRepositories(String organization, String scm, String scmOrganisation, String credentialId, Integer pageSize, Integer pageNumber, Handler<AsyncResult<ScmOrganisations>> handler);
    
    //getSCMOrganisationRepository
    void getSCMOrganisationRepository(String organization, String scm, String scmOrganisation, String repository, String credentialId, Handler<AsyncResult<ScmOrganisations>> handler);
    
    //getSCMOrganisations
    void getSCMOrganisations(String organization, String scm, String credentialId, Handler<AsyncResult<ScmOrganisations>> handler);
    
    //getUser
    void getUser(String organization, String user, Handler<AsyncResult<User>> handler);
    
    //getUserFavorites
    void getUserFavorites(String user, Handler<AsyncResult<UserFavorites>> handler);
    
    //getUsers
    void getUsers(String organization, Handler<AsyncResult<User>> handler);
    
    //postPipelineRun
    void postPipelineRun(String organization, String pipeline, String run, Handler<AsyncResult<QueueItemImpl>> handler);
    
    //postPipelineRuns
    void postPipelineRuns(String organization, String pipeline, Handler<AsyncResult<QueueItemImpl>> handler);
    
    //putPipelineFavorite
    void putPipelineFavorite(String organization, String pipeline, String body, Handler<AsyncResult<FavoriteImpl>> handler);
    
    //putPipelineRun
    void putPipelineRun(String organization, String pipeline, String run, String blocking, Integer timeOutInSecs, Handler<AsyncResult<PipelineRun>> handler);
    
    //search
    void search(String q, Handler<AsyncResult<String>> handler);
    
    //searchClasses
    void searchClasses(String q, Handler<AsyncResult<String>> handler);
    
}
