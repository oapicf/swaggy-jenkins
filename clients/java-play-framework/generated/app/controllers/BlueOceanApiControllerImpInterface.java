package controllers;

import apimodels.Body;
import apimodels.BranchImpl;
import apimodels.FavoriteImpl;
import apimodels.GithubScm;
import apimodels.MultibranchPipeline;
import apimodels.Organisation;
import apimodels.Organisations;
import apimodels.Pipeline;
import apimodels.PipelineActivities;
import apimodels.PipelineFolderImpl;
import apimodels.PipelineImpl;
import apimodels.PipelineQueue;
import apimodels.PipelineRun;
import apimodels.PipelineRunNode;
import apimodels.PipelineRunNodeSteps;
import apimodels.PipelineRunNodes;
import apimodels.PipelineRuns;
import apimodels.PipelineStepImpl;
import apimodels.Pipelines;
import apimodels.QueueItemImpl;
import apimodels.ScmOrganisations;
import apimodels.User;
import apimodels.UserFavorites;

import play.mvc.Http;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;

import javax.validation.constraints.*;

@SuppressWarnings("RedundantThrows")
public interface BlueOceanApiControllerImpInterface {
    void deletePipelineQueueItem(String organization, String pipeline, String queue) throws Exception;

    User getAuthenticatedUser(String organization) throws Exception;

    String getClasses(String propertyClass) throws Exception;

    String getJsonWebKey(Integer key) throws Exception;

    String getJsonWebToken(Integer expiryTimeInMins, Integer maxExpiryTimeInMins) throws Exception;

    Organisation getOrganisation(String organization) throws Exception;

    Organisations getOrganisations() throws Exception;

    Pipeline getPipeline(String organization, String pipeline) throws Exception;

    PipelineActivities getPipelineActivities(String organization, String pipeline) throws Exception;

    BranchImpl getPipelineBranch(String organization, String pipeline, String branch) throws Exception;

    PipelineRun getPipelineBranchRun(String organization, String pipeline, String branch, String run) throws Exception;

    MultibranchPipeline getPipelineBranches(String organization, String pipeline) throws Exception;

    PipelineFolderImpl getPipelineFolder(String organization, String folder) throws Exception;

    PipelineImpl getPipelineFolderPipeline(String organization, String pipeline, String folder) throws Exception;

    PipelineQueue getPipelineQueue(String organization, String pipeline) throws Exception;

    PipelineRun getPipelineRun(String organization, String pipeline, String run) throws Exception;

    String getPipelineRunLog(String organization, String pipeline, String run, Integer start, Boolean download) throws Exception;

    PipelineRunNode getPipelineRunNode(String organization, String pipeline, String run, String node) throws Exception;

    PipelineStepImpl getPipelineRunNodeStep(String organization, String pipeline, String run, String node, String step) throws Exception;

    String getPipelineRunNodeStepLog(String organization, String pipeline, String run, String node, String step) throws Exception;

    PipelineRunNodeSteps getPipelineRunNodeSteps(String organization, String pipeline, String run, String node) throws Exception;

    PipelineRunNodes getPipelineRunNodes(String organization, String pipeline, String run) throws Exception;

    PipelineRuns getPipelineRuns(String organization, String pipeline) throws Exception;

    Pipelines getPipelines(String organization) throws Exception;

    GithubScm getSCM(String organization, String scm) throws Exception;

    ScmOrganisations getSCMOrganisationRepositories(String organization, String scm, String scmOrganisation, String credentialId, Integer pageSize, Integer pageNumber) throws Exception;

    ScmOrganisations getSCMOrganisationRepository(String organization, String scm, String scmOrganisation, String repository, String credentialId) throws Exception;

    ScmOrganisations getSCMOrganisations(String organization, String scm, String credentialId) throws Exception;

    User getUser(String organization, String user) throws Exception;

    UserFavorites getUserFavorites(String user) throws Exception;

    User getUsers(String organization) throws Exception;

    QueueItemImpl postPipelineRun(String organization, String pipeline, String run) throws Exception;

    QueueItemImpl postPipelineRuns(String organization, String pipeline) throws Exception;

    FavoriteImpl putPipelineFavorite(String organization, String pipeline, Body body) throws Exception;

    PipelineRun putPipelineRun(String organization, String pipeline, String run, String blocking, Integer timeOutInSecs) throws Exception;

    String search( @NotNull String q) throws Exception;

    String searchClasses( @NotNull String q) throws Exception;

}
