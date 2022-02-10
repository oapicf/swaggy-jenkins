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
import org.openapitools.vertxweb.server.model.UNKNOWN_BASE_TYPE;
import org.openapitools.vertxweb.server.model.User;

import org.openapitools.vertxweb.server.ApiResponse;

import io.vertx.core.Future;
import io.vertx.core.json.JsonObject;
import io.vertx.ext.web.handler.impl.HttpStatusException;

import java.util.List;
import java.util.Map;

// Implement this class

public class BlueOceanApiImpl implements BlueOceanApi {
    public Future<ApiResponse<Void>> deletePipelineQueueItem(String organization, String pipeline, String queue) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<User>> getAuthenticatedUser(String organization) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<String>> getClasses(String propertyClass) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<String>> getJsonWebKey(Integer key) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<String>> getJsonWebToken(Integer expiryTimeInMins, Integer maxExpiryTimeInMins) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<Organisation>> getOrganisation(String organization) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<List<Organisation>>> getOrganisations() {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<Pipeline>> getPipeline(String organization, String pipeline) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<List<PipelineActivity>>> getPipelineActivities(String organization, String pipeline) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<BranchImpl>> getPipelineBranch(String organization, String pipeline, String branch) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<PipelineRun>> getPipelineBranchRun(String organization, String pipeline, String branch, String run) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<MultibranchPipeline>> getPipelineBranches(String organization, String pipeline) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<PipelineFolderImpl>> getPipelineFolder(String organization, String folder) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<PipelineImpl>> getPipelineFolderPipeline(String organization, String pipeline, String folder) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<List<QueueItemImpl>>> getPipelineQueue(String organization, String pipeline) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<PipelineRun>> getPipelineRun(String organization, String pipeline, String run) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<String>> getPipelineRunLog(String organization, String pipeline, String run, Integer start, Boolean download) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<PipelineRunNode>> getPipelineRunNode(String organization, String pipeline, String run, String node) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<PipelineStepImpl>> getPipelineRunNodeStep(String organization, String pipeline, String run, String node, String step) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<String>> getPipelineRunNodeStepLog(String organization, String pipeline, String run, String node, String step) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<List<PipelineStepImpl>>> getPipelineRunNodeSteps(String organization, String pipeline, String run, String node) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<List<PipelineRunNode>>> getPipelineRunNodes(String organization, String pipeline, String run) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<List<PipelineRun>>> getPipelineRuns(String organization, String pipeline) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<List<Pipeline>>> getPipelines(String organization) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<GithubScm>> getSCM(String organization, String scm) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<List<GithubOrganization>>> getSCMOrganisationRepositories(String organization, String scm, String scmOrganisation, String credentialId, Integer pageSize, Integer pageNumber) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<List<GithubOrganization>>> getSCMOrganisationRepository(String organization, String scm, String scmOrganisation, String repository, String credentialId) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<List<GithubOrganization>>> getSCMOrganisations(String organization, String scm, String credentialId) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<User>> getUser(String organization, String user) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<List<FavoriteImpl>>> getUserFavorites(String user) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<User>> getUsers(String organization) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<QueueItemImpl>> postPipelineRun(String organization, String pipeline, String run) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<QueueItemImpl>> postPipelineRuns(String organization, String pipeline) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<FavoriteImpl>> putPipelineFavorite(String organization, String pipeline, UNKNOWN_BASE_TYPE UNKNOWN_BASE_TYPE) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<PipelineRun>> putPipelineRun(String organization, String pipeline, String run, String blocking, Integer timeOutInSecs) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<String>> search(String q) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<String>> searchClasses(String q) {
        return Future.failedFuture(new HttpStatusException(501));
    }

}
