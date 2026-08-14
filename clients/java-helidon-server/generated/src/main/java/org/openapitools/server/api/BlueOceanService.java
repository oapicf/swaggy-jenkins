package org.openapitools.server.api;

import org.openapitools.server.model.BranchImpl;
import org.openapitools.server.model.FavoriteImpl;
import org.openapitools.server.model.GithubOrganization;
import org.openapitools.server.model.GithubScm;
import java.util.HexFormat;
import java.util.List;
import org.openapitools.server.model.MultibranchPipeline;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.util.Optional;
import org.openapitools.server.model.Organisation;
import org.openapitools.server.model.Pipeline;
import org.openapitools.server.model.PipelineActivity;
import org.openapitools.server.model.PipelineFolderImpl;
import org.openapitools.server.model.PipelineImpl;
import org.openapitools.server.model.PipelineRun;
import org.openapitools.server.model.PipelineRunNode;
import org.openapitools.server.model.PipelineStepImpl;
import org.openapitools.server.model.QueueItemImpl;
import io.helidon.http.Status;
import org.openapitools.server.model.User;

import io.helidon.webserver.http.HttpRules;
import io.helidon.webserver.http.ServerRequest;
import io.helidon.webserver.http.ServerResponse;
import io.helidon.webserver.http.HttpService;

@io.helidon.common.Generated(value = "org.openapitools.codegen.languages.JavaHelidonServerCodegen",
                             trigger = "tag = 'BlueOcean'",
                             version = "7.24.0")
public interface BlueOceanService extends HttpService {

    /**
     * A service registers itself by updating the routing rules.
     * @param rules the routing rules.
     */
    @Override
    default void routing(HttpRules rules) {
        rules.delete("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}", this::deletePipelineQueueItem);
        rules.get("/blue/rest/organizations/{organization}/user/", this::getAuthenticatedUser);
        rules.get("/blue/rest/classes/{class}", this::getClasses);
        rules.get("/jwt-auth/jwks/{key}", this::getJsonWebKey);
        rules.get("/jwt-auth/token", this::getJsonWebToken);
        rules.get("/blue/rest/organizations/{organization}", this::getOrganisation);
        rules.get("/blue/rest/organizations/", this::getOrganisations);
        rules.get("/blue/rest/organizations/{organization}/pipelines/{pipeline}", this::getPipeline);
        rules.get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities", this::getPipelineActivities);
        rules.get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/", this::getPipelineBranch);
        rules.get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}", this::getPipelineBranchRun);
        rules.get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches", this::getPipelineBranches);
        rules.get("/blue/rest/organizations/{organization}/pipelines/{folder}/", this::getPipelineFolder);
        rules.get("/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}", this::getPipelineFolderPipeline);
        rules.get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue", this::getPipelineQueue);
        rules.get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}", this::getPipelineRun);
        rules.get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log", this::getPipelineRunLog);
        rules.get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}", this::getPipelineRunNode);
        rules.get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}", this::getPipelineRunNodeStep);
        rules.get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log", this::getPipelineRunNodeStepLog);
        rules.get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps", this::getPipelineRunNodeSteps);
        rules.get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes", this::getPipelineRunNodes);
        rules.get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs", this::getPipelineRuns);
        rules.get("/blue/rest/organizations/{organization}/pipelines/", this::getPipelines);
        rules.get("/blue/rest/organizations/{organization}/scm/{scm}", this::getSCM);
        rules.get("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories", this::getSCMOrganisationRepositories);
        rules.get("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}", this::getSCMOrganisationRepository);
        rules.get("/blue/rest/organizations/{organization}/scm/{scm}/organizations", this::getSCMOrganisations);
        rules.get("/blue/rest/organizations/{organization}/users/{user}", this::getUser);
        rules.get("/blue/rest/users/{user}/favorites", this::getUserFavorites);
        rules.get("/blue/rest/organizations/{organization}/users/", this::getUsers);
        rules.post("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay", this::postPipelineRun);
        rules.post("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs", this::postPipelineRuns);
        rules.put("/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite", this::putPipelineFavorite);
        rules.put("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop", this::putPipelineRun);
        rules.get("/blue/rest/search/", this::search);
        rules.get("/blue/rest/classes/", this::searchClasses);
    }


    /**
     * DELETE /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}.
     *
     * @param request the server request
     * @param response the server response
     */
    void deletePipelineQueueItem(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/user/.
     *
     * @param request the server request
     * @param response the server response
     */
    void getAuthenticatedUser(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/classes/{class}.
     *
     * @param request the server request
     * @param response the server response
     */
    void getClasses(ServerRequest request, ServerResponse response);
    /**
     * GET /jwt-auth/jwks/{key}.
     *
     * @param request the server request
     * @param response the server response
     */
    void getJsonWebKey(ServerRequest request, ServerResponse response);
    /**
     * GET /jwt-auth/token.
     *
     * @param request the server request
     * @param response the server response
     */
    void getJsonWebToken(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}.
     *
     * @param request the server request
     * @param response the server response
     */
    void getOrganisation(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/.
     *
     * @param request the server request
     * @param response the server response
     */
    void getOrganisations(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/pipelines/{pipeline}.
     *
     * @param request the server request
     * @param response the server response
     */
    void getPipeline(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities.
     *
     * @param request the server request
     * @param response the server response
     */
    void getPipelineActivities(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/.
     *
     * @param request the server request
     * @param response the server response
     */
    void getPipelineBranch(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}.
     *
     * @param request the server request
     * @param response the server response
     */
    void getPipelineBranchRun(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches.
     *
     * @param request the server request
     * @param response the server response
     */
    void getPipelineBranches(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/pipelines/{folder}/.
     *
     * @param request the server request
     * @param response the server response
     */
    void getPipelineFolder(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}.
     *
     * @param request the server request
     * @param response the server response
     */
    void getPipelineFolderPipeline(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue.
     *
     * @param request the server request
     * @param response the server response
     */
    void getPipelineQueue(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}.
     *
     * @param request the server request
     * @param response the server response
     */
    void getPipelineRun(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log.
     *
     * @param request the server request
     * @param response the server response
     */
    void getPipelineRunLog(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}.
     *
     * @param request the server request
     * @param response the server response
     */
    void getPipelineRunNode(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}.
     *
     * @param request the server request
     * @param response the server response
     */
    void getPipelineRunNodeStep(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log.
     *
     * @param request the server request
     * @param response the server response
     */
    void getPipelineRunNodeStepLog(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps.
     *
     * @param request the server request
     * @param response the server response
     */
    void getPipelineRunNodeSteps(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes.
     *
     * @param request the server request
     * @param response the server response
     */
    void getPipelineRunNodes(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs.
     *
     * @param request the server request
     * @param response the server response
     */
    void getPipelineRuns(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/pipelines/.
     *
     * @param request the server request
     * @param response the server response
     */
    void getPipelines(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/scm/{scm}.
     *
     * @param request the server request
     * @param response the server response
     */
    void getSCM(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories.
     *
     * @param request the server request
     * @param response the server response
     */
    void getSCMOrganisationRepositories(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}.
     *
     * @param request the server request
     * @param response the server response
     */
    void getSCMOrganisationRepository(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/scm/{scm}/organizations.
     *
     * @param request the server request
     * @param response the server response
     */
    void getSCMOrganisations(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/users/{user}.
     *
     * @param request the server request
     * @param response the server response
     */
    void getUser(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/users/{user}/favorites.
     *
     * @param request the server request
     * @param response the server response
     */
    void getUserFavorites(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/organizations/{organization}/users/.
     *
     * @param request the server request
     * @param response the server response
     */
    void getUsers(ServerRequest request, ServerResponse response);
    /**
     * POST /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay.
     *
     * @param request the server request
     * @param response the server response
     */
    void postPipelineRun(ServerRequest request, ServerResponse response);
    /**
     * POST /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs.
     *
     * @param request the server request
     * @param response the server response
     */
    void postPipelineRuns(ServerRequest request, ServerResponse response);
    /**
     * PUT /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite.
     *
     * @param request the server request
     * @param response the server response
     */
    void putPipelineFavorite(ServerRequest request, ServerResponse response);
    /**
     * PUT /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop.
     *
     * @param request the server request
     * @param response the server response
     */
    void putPipelineRun(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/search/.
     *
     * @param request the server request
     * @param response the server response
     */
    void search(ServerRequest request, ServerResponse response);
    /**
     * GET /blue/rest/classes/.
     *
     * @param request the server request
     * @param response the server response
     */
    void searchClasses(ServerRequest request, ServerResponse response);
}
