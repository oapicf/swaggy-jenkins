package org.openapitools.vertxweb.server.api;

import org.openapitools.vertxweb.server.model.BranchImpl;
import org.openapitools.vertxweb.server.model.FavoriteImpl;
import org.openapitools.vertxweb.server.model.GithubOrganization;
import org.openapitools.vertxweb.server.model.GithubScm;
import org.openapitools.vertxweb.server.model.MultibranchPipeline;
import org.openapitools.vertxweb.server.model.Organisation;
import org.openapitools.vertxweb.server.model.Pipeline;
import org.openapitools.vertxweb.server.model.PipelineActivity;
import org.openapitools.vertxweb.server.model.PipelineFolderImpl;
import org.openapitools.vertxweb.server.model.PipelineImpl;
import org.openapitools.vertxweb.server.model.PipelineRun;
import org.openapitools.vertxweb.server.model.PipelineRunNode;
import org.openapitools.vertxweb.server.model.PipelineStepImpl;
import org.openapitools.vertxweb.server.model.QueueItemImpl;
import org.openapitools.vertxweb.server.model.User;

import org.openapitools.vertxweb.server.ApiResponse;

import io.vertx.core.Future;
import io.vertx.core.json.JsonObject;

import java.util.List;
import java.util.Map;

public interface BlueOceanApi  {
    Future<ApiResponse<Void>> deletePipelineQueueItem(String organization, String pipeline, String queue);
    Future<ApiResponse<User>> getAuthenticatedUser(String organization);
    Future<ApiResponse<String>> getClasses(String propertyClass);
    Future<ApiResponse<String>> getJsonWebKey(Integer key);
    Future<ApiResponse<String>> getJsonWebToken(Integer expiryTimeInMins, Integer maxExpiryTimeInMins);
    Future<ApiResponse<Organisation>> getOrganisation(String organization);
    Future<ApiResponse<List<Organisation>>> getOrganisations();
    Future<ApiResponse<Pipeline>> getPipeline(String organization, String pipeline);
    Future<ApiResponse<List<PipelineActivity>>> getPipelineActivities(String organization, String pipeline);
    Future<ApiResponse<BranchImpl>> getPipelineBranch(String organization, String pipeline, String branch);
    Future<ApiResponse<PipelineRun>> getPipelineBranchRun(String organization, String pipeline, String branch, String run);
    Future<ApiResponse<MultibranchPipeline>> getPipelineBranches(String organization, String pipeline);
    Future<ApiResponse<PipelineFolderImpl>> getPipelineFolder(String organization, String folder);
    Future<ApiResponse<PipelineImpl>> getPipelineFolderPipeline(String organization, String pipeline, String folder);
    Future<ApiResponse<List<QueueItemImpl>>> getPipelineQueue(String organization, String pipeline);
    Future<ApiResponse<PipelineRun>> getPipelineRun(String organization, String pipeline, String run);
    Future<ApiResponse<String>> getPipelineRunLog(String organization, String pipeline, String run, Integer start, Boolean download);
    Future<ApiResponse<PipelineRunNode>> getPipelineRunNode(String organization, String pipeline, String run, String node);
    Future<ApiResponse<PipelineStepImpl>> getPipelineRunNodeStep(String organization, String pipeline, String run, String node, String step);
    Future<ApiResponse<String>> getPipelineRunNodeStepLog(String organization, String pipeline, String run, String node, String step);
    Future<ApiResponse<List<PipelineStepImpl>>> getPipelineRunNodeSteps(String organization, String pipeline, String run, String node);
    Future<ApiResponse<List<PipelineRunNode>>> getPipelineRunNodes(String organization, String pipeline, String run);
    Future<ApiResponse<List<PipelineRun>>> getPipelineRuns(String organization, String pipeline);
    Future<ApiResponse<List<Pipeline>>> getPipelines(String organization);
    Future<ApiResponse<GithubScm>> getSCM(String organization, String scm);
    Future<ApiResponse<List<GithubOrganization>>> getSCMOrganisationRepositories(String organization, String scm, String scmOrganisation, String credentialId, Integer pageSize, Integer pageNumber);
    Future<ApiResponse<List<GithubOrganization>>> getSCMOrganisationRepository(String organization, String scm, String scmOrganisation, String repository, String credentialId);
    Future<ApiResponse<List<GithubOrganization>>> getSCMOrganisations(String organization, String scm, String credentialId);
    Future<ApiResponse<User>> getUser(String organization, String user);
    Future<ApiResponse<List<FavoriteImpl>>> getUserFavorites(String user);
    Future<ApiResponse<User>> getUsers(String organization);
    Future<ApiResponse<QueueItemImpl>> postPipelineRun(String organization, String pipeline, String run);
    Future<ApiResponse<QueueItemImpl>> postPipelineRuns(String organization, String pipeline);
    Future<ApiResponse<FavoriteImpl>> putPipelineFavorite(String organization, String pipeline, Boolean body);
    Future<ApiResponse<PipelineRun>> putPipelineRun(String organization, String pipeline, String run, String blocking, Integer timeOutInSecs);
    Future<ApiResponse<String>> search(String q);
    Future<ApiResponse<String>> searchClasses(String q);
}
