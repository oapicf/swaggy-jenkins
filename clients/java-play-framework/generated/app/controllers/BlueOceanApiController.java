package controllers;

import apimodels.BranchImpl;
import apimodels.FavoriteImpl;
import apimodels.GithubOrganization;
import apimodels.GithubScm;
import apimodels.MultibranchPipeline;
import apimodels.Organisation;
import apimodels.Pipeline;
import apimodels.PipelineActivity;
import apimodels.PipelineFolderImpl;
import apimodels.PipelineImpl;
import apimodels.PipelineRun;
import apimodels.PipelineRunNode;
import apimodels.PipelineStepImpl;
import apimodels.QueueItemImpl;
import apimodels.User;

import com.typesafe.config.Config;
import play.mvc.Controller;
import play.mvc.Result;
import play.mvc.Http;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.JsonNode;
import com.google.inject.Inject;
import java.io.File;
import play.libs.Files.TemporaryFile;
import openapitools.OpenAPIUtils;
import com.fasterxml.jackson.core.type.TypeReference;

import javax.validation.constraints.*;
import javax.validation.Valid;
import com.typesafe.config.Config;

import openapitools.OpenAPIUtils.ApiAction;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2025-04-27T08:09:26.057404893Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public class BlueOceanApiController extends Controller {
    private final BlueOceanApiControllerImpInterface imp;
    private final ObjectMapper mapper;
    private final Config configuration;

    @Inject
    private BlueOceanApiController(Config configuration, BlueOceanApiControllerImpInterface imp) {
        this.imp = imp;
        mapper = new ObjectMapper();
        this.configuration = configuration;
    }

    @ApiAction
    public Result deletePipelineQueueItem(Http.Request request, String organization,String pipeline,String queue) throws Exception {
        return imp.deletePipelineQueueItemHttp(request, organization, pipeline, queue);
    }

    @ApiAction
    public Result getAuthenticatedUser(Http.Request request, String organization) throws Exception {
        return imp.getAuthenticatedUserHttp(request, organization);
    }

    @ApiAction
    public Result getClasses(Http.Request request, String propertyClass) throws Exception {
        return imp.getClassesHttp(request, propertyClass);
    }

    @ApiAction
    public Result getJsonWebKey(Http.Request request, Integer key) throws Exception {
        return imp.getJsonWebKeyHttp(request, key);
    }

    @ApiAction
    public Result getJsonWebToken(Http.Request request) throws Exception {
        String valueexpiryTimeInMins = request.getQueryString("expiryTimeInMins");
        Integer expiryTimeInMins;
        if (valueexpiryTimeInMins != null) {
            expiryTimeInMins = Integer.parseInt(valueexpiryTimeInMins);
        } else {
            expiryTimeInMins = null;
        }
        String valuemaxExpiryTimeInMins = request.getQueryString("maxExpiryTimeInMins");
        Integer maxExpiryTimeInMins;
        if (valuemaxExpiryTimeInMins != null) {
            maxExpiryTimeInMins = Integer.parseInt(valuemaxExpiryTimeInMins);
        } else {
            maxExpiryTimeInMins = null;
        }
        return imp.getJsonWebTokenHttp(request, expiryTimeInMins, maxExpiryTimeInMins);
    }

    @ApiAction
    public Result getOrganisation(Http.Request request, String organization) throws Exception {
        return imp.getOrganisationHttp(request, organization);
    }

    @ApiAction
    public Result getOrganisations(Http.Request request) throws Exception {
        return imp.getOrganisationsHttp(request);
    }

    @ApiAction
    public Result getPipeline(Http.Request request, String organization,String pipeline) throws Exception {
        return imp.getPipelineHttp(request, organization, pipeline);
    }

    @ApiAction
    public Result getPipelineActivities(Http.Request request, String organization,String pipeline) throws Exception {
        return imp.getPipelineActivitiesHttp(request, organization, pipeline);
    }

    @ApiAction
    public Result getPipelineBranch(Http.Request request, String organization,String pipeline,String branch) throws Exception {
        return imp.getPipelineBranchHttp(request, organization, pipeline, branch);
    }

    @ApiAction
    public Result getPipelineBranchRun(Http.Request request, String organization,String pipeline,String branch,String run) throws Exception {
        return imp.getPipelineBranchRunHttp(request, organization, pipeline, branch, run);
    }

    @ApiAction
    public Result getPipelineBranches(Http.Request request, String organization,String pipeline) throws Exception {
        return imp.getPipelineBranchesHttp(request, organization, pipeline);
    }

    @ApiAction
    public Result getPipelineFolder(Http.Request request, String organization,String folder) throws Exception {
        return imp.getPipelineFolderHttp(request, organization, folder);
    }

    @ApiAction
    public Result getPipelineFolderPipeline(Http.Request request, String organization,String pipeline,String folder) throws Exception {
        return imp.getPipelineFolderPipelineHttp(request, organization, pipeline, folder);
    }

    @ApiAction
    public Result getPipelineQueue(Http.Request request, String organization,String pipeline) throws Exception {
        return imp.getPipelineQueueHttp(request, organization, pipeline);
    }

    @ApiAction
    public Result getPipelineRun(Http.Request request, String organization,String pipeline,String run) throws Exception {
        return imp.getPipelineRunHttp(request, organization, pipeline, run);
    }

    @ApiAction
    public Result getPipelineRunLog(Http.Request request, String organization,String pipeline,String run) throws Exception {
        String valuestart = request.getQueryString("start");
        Integer start;
        if (valuestart != null) {
            start = Integer.parseInt(valuestart);
        } else {
            start = null;
        }
        String valuedownload = request.getQueryString("download");
        Boolean download;
        if (valuedownload != null) {
            download = Boolean.valueOf(valuedownload);
        } else {
            download = null;
        }
        return imp.getPipelineRunLogHttp(request, organization, pipeline, run, start, download);
    }

    @ApiAction
    public Result getPipelineRunNode(Http.Request request, String organization,String pipeline,String run,String node) throws Exception {
        return imp.getPipelineRunNodeHttp(request, organization, pipeline, run, node);
    }

    @ApiAction
    public Result getPipelineRunNodeStep(Http.Request request, String organization,String pipeline,String run,String node,String step) throws Exception {
        return imp.getPipelineRunNodeStepHttp(request, organization, pipeline, run, node, step);
    }

    @ApiAction
    public Result getPipelineRunNodeStepLog(Http.Request request, String organization,String pipeline,String run,String node,String step) throws Exception {
        return imp.getPipelineRunNodeStepLogHttp(request, organization, pipeline, run, node, step);
    }

    @ApiAction
    public Result getPipelineRunNodeSteps(Http.Request request, String organization,String pipeline,String run,String node) throws Exception {
        return imp.getPipelineRunNodeStepsHttp(request, organization, pipeline, run, node);
    }

    @ApiAction
    public Result getPipelineRunNodes(Http.Request request, String organization,String pipeline,String run) throws Exception {
        return imp.getPipelineRunNodesHttp(request, organization, pipeline, run);
    }

    @ApiAction
    public Result getPipelineRuns(Http.Request request, String organization,String pipeline) throws Exception {
        return imp.getPipelineRunsHttp(request, organization, pipeline);
    }

    @ApiAction
    public Result getPipelines(Http.Request request, String organization) throws Exception {
        return imp.getPipelinesHttp(request, organization);
    }

    @ApiAction
    public Result getSCM(Http.Request request, String organization,String scm) throws Exception {
        return imp.getSCMHttp(request, organization, scm);
    }

    @ApiAction
    public Result getSCMOrganisationRepositories(Http.Request request, String organization,String scm,String scmOrganisation) throws Exception {
        String valuecredentialId = request.getQueryString("credentialId");
        String credentialId;
        if (valuecredentialId != null) {
            credentialId = valuecredentialId;
        } else {
            credentialId = null;
        }
        String valuepageSize = request.getQueryString("pageSize");
        Integer pageSize;
        if (valuepageSize != null) {
            pageSize = Integer.parseInt(valuepageSize);
        } else {
            pageSize = null;
        }
        String valuepageNumber = request.getQueryString("pageNumber");
        Integer pageNumber;
        if (valuepageNumber != null) {
            pageNumber = Integer.parseInt(valuepageNumber);
        } else {
            pageNumber = null;
        }
        return imp.getSCMOrganisationRepositoriesHttp(request, organization, scm, scmOrganisation, credentialId, pageSize, pageNumber);
    }

    @ApiAction
    public Result getSCMOrganisationRepository(Http.Request request, String organization,String scm,String scmOrganisation,String repository) throws Exception {
        String valuecredentialId = request.getQueryString("credentialId");
        String credentialId;
        if (valuecredentialId != null) {
            credentialId = valuecredentialId;
        } else {
            credentialId = null;
        }
        return imp.getSCMOrganisationRepositoryHttp(request, organization, scm, scmOrganisation, repository, credentialId);
    }

    @ApiAction
    public Result getSCMOrganisations(Http.Request request, String organization,String scm) throws Exception {
        String valuecredentialId = request.getQueryString("credentialId");
        String credentialId;
        if (valuecredentialId != null) {
            credentialId = valuecredentialId;
        } else {
            credentialId = null;
        }
        return imp.getSCMOrganisationsHttp(request, organization, scm, credentialId);
    }

    @ApiAction
    public Result getUser(Http.Request request, String organization,String user) throws Exception {
        return imp.getUserHttp(request, organization, user);
    }

    @ApiAction
    public Result getUserFavorites(Http.Request request, String user) throws Exception {
        return imp.getUserFavoritesHttp(request, user);
    }

    @ApiAction
    public Result getUsers(Http.Request request, String organization) throws Exception {
        return imp.getUsersHttp(request, organization);
    }

    @ApiAction
    public Result postPipelineRun(Http.Request request, String organization,String pipeline,String run) throws Exception {
        return imp.postPipelineRunHttp(request, organization, pipeline, run);
    }

    @ApiAction
    public Result postPipelineRuns(Http.Request request, String organization,String pipeline) throws Exception {
        return imp.postPipelineRunsHttp(request, organization, pipeline);
    }

    @ApiAction
    public Result putPipelineFavorite(Http.Request request, String organization,String pipeline) throws Exception {
        JsonNode nodebody = request.body().asJson();
        Boolean body;
        if (nodebody != null) {
            body = mapper.readValue(nodebody.toString(), Boolean.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(body);
            }
        } else {
            throw new IllegalArgumentException("'body' parameter is required");
        }
        return imp.putPipelineFavoriteHttp(request, organization, pipeline, body);
    }

    @ApiAction
    public Result putPipelineRun(Http.Request request, String organization,String pipeline,String run) throws Exception {
        String valueblocking = request.getQueryString("blocking");
        String blocking;
        if (valueblocking != null) {
            blocking = valueblocking;
        } else {
            blocking = null;
        }
        String valuetimeOutInSecs = request.getQueryString("timeOutInSecs");
        Integer timeOutInSecs;
        if (valuetimeOutInSecs != null) {
            timeOutInSecs = Integer.parseInt(valuetimeOutInSecs);
        } else {
            timeOutInSecs = null;
        }
        return imp.putPipelineRunHttp(request, organization, pipeline, run, blocking, timeOutInSecs);
    }

    @ApiAction
    public Result search(Http.Request request) throws Exception {
        String valueq = request.getQueryString("q");
        String q;
        if (valueq != null) {
            q = valueq;
        } else {
            throw new IllegalArgumentException("'q' parameter is required");
        }
        return imp.searchHttp(request, q);
    }

    @ApiAction
    public Result searchClasses(Http.Request request) throws Exception {
        String valueq = request.getQueryString("q");
        String q;
        if (valueq != null) {
            q = valueq;
        } else {
            throw new IllegalArgumentException("'q' parameter is required");
        }
        return imp.searchClassesHttp(request, q);
    }

}
