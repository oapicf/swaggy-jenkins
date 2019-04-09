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

import play.mvc.Controller;
import play.mvc.Result;
import play.mvc.Http;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.JsonNode;
import com.google.inject.Inject;
import java.io.File;
import openapitools.OpenAPIUtils;
import com.fasterxml.jackson.core.type.TypeReference;

import javax.validation.constraints.*;
import play.Configuration;

import openapitools.OpenAPIUtils.ApiAction;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2019-04-09T15:08:36.893Z[GMT]")

public class BlueOceanApiController extends Controller {

    private final BlueOceanApiControllerImpInterface imp;
    private final ObjectMapper mapper;
    private final Configuration configuration;

    @Inject
    private BlueOceanApiController(Configuration configuration, BlueOceanApiControllerImpInterface imp) {
        this.imp = imp;
        mapper = new ObjectMapper();
        this.configuration = configuration;
    }


    @ApiAction
    public Result deletePipelineQueueItem(String organization,String pipeline,String queue) throws Exception {
        imp.deletePipelineQueueItem(organization, pipeline, queue);
        return ok();
    }

    @ApiAction
    public Result getAuthenticatedUser(String organization) throws Exception {
        User obj = imp.getAuthenticatedUser(organization);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getClasses(String propertyClass) throws Exception {
        String obj = imp.getClasses(propertyClass);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getJsonWebKey(Integer key) throws Exception {
        String obj = imp.getJsonWebKey(key);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getJsonWebToken() throws Exception {
        String valueexpiryTimeInMins = request().getQueryString("expiryTimeInMins");
        Integer expiryTimeInMins;
        if (valueexpiryTimeInMins != null) {
            expiryTimeInMins = Integer.parseInt(valueexpiryTimeInMins);
        } else {
            expiryTimeInMins = null;
        }
        String valuemaxExpiryTimeInMins = request().getQueryString("maxExpiryTimeInMins");
        Integer maxExpiryTimeInMins;
        if (valuemaxExpiryTimeInMins != null) {
            maxExpiryTimeInMins = Integer.parseInt(valuemaxExpiryTimeInMins);
        } else {
            maxExpiryTimeInMins = null;
        }
        String obj = imp.getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getOrganisation(String organization) throws Exception {
        Organisation obj = imp.getOrganisation(organization);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getOrganisations() throws Exception {
        Organisations obj = imp.getOrganisations();
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getPipeline(String organization,String pipeline) throws Exception {
        Pipeline obj = imp.getPipeline(organization, pipeline);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getPipelineActivities(String organization,String pipeline) throws Exception {
        PipelineActivities obj = imp.getPipelineActivities(organization, pipeline);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getPipelineBranch(String organization,String pipeline,String branch) throws Exception {
        BranchImpl obj = imp.getPipelineBranch(organization, pipeline, branch);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getPipelineBranchRun(String organization,String pipeline,String branch,String run) throws Exception {
        PipelineRun obj = imp.getPipelineBranchRun(organization, pipeline, branch, run);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getPipelineBranches(String organization,String pipeline) throws Exception {
        MultibranchPipeline obj = imp.getPipelineBranches(organization, pipeline);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getPipelineFolder(String organization,String folder) throws Exception {
        PipelineFolderImpl obj = imp.getPipelineFolder(organization, folder);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getPipelineFolderPipeline(String organization,String pipeline,String folder) throws Exception {
        PipelineImpl obj = imp.getPipelineFolderPipeline(organization, pipeline, folder);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getPipelineQueue(String organization,String pipeline) throws Exception {
        PipelineQueue obj = imp.getPipelineQueue(organization, pipeline);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getPipelineRun(String organization,String pipeline,String run) throws Exception {
        PipelineRun obj = imp.getPipelineRun(organization, pipeline, run);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getPipelineRunLog(String organization,String pipeline,String run) throws Exception {
        String valuestart = request().getQueryString("start");
        Integer start;
        if (valuestart != null) {
            start = Integer.parseInt(valuestart);
        } else {
            start = null;
        }
        String valuedownload = request().getQueryString("download");
        Boolean download;
        if (valuedownload != null) {
            download = Boolean.valueOf(valuedownload);
        } else {
            download = null;
        }
        String obj = imp.getPipelineRunLog(organization, pipeline, run, start, download);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getPipelineRunNode(String organization,String pipeline,String run,String node) throws Exception {
        PipelineRunNode obj = imp.getPipelineRunNode(organization, pipeline, run, node);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getPipelineRunNodeStep(String organization,String pipeline,String run,String node,String step) throws Exception {
        PipelineStepImpl obj = imp.getPipelineRunNodeStep(organization, pipeline, run, node, step);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getPipelineRunNodeStepLog(String organization,String pipeline,String run,String node,String step) throws Exception {
        String obj = imp.getPipelineRunNodeStepLog(organization, pipeline, run, node, step);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getPipelineRunNodeSteps(String organization,String pipeline,String run,String node) throws Exception {
        PipelineRunNodeSteps obj = imp.getPipelineRunNodeSteps(organization, pipeline, run, node);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getPipelineRunNodes(String organization,String pipeline,String run) throws Exception {
        PipelineRunNodes obj = imp.getPipelineRunNodes(organization, pipeline, run);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getPipelineRuns(String organization,String pipeline) throws Exception {
        PipelineRuns obj = imp.getPipelineRuns(organization, pipeline);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getPipelines(String organization) throws Exception {
        Pipelines obj = imp.getPipelines(organization);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getSCM(String organization,String scm) throws Exception {
        GithubScm obj = imp.getSCM(organization, scm);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getSCMOrganisationRepositories(String organization,String scm,String scmOrganisation) throws Exception {
        String valuecredentialId = request().getQueryString("credentialId");
        String credentialId;
        if (valuecredentialId != null) {
            credentialId = valuecredentialId;
        } else {
            credentialId = null;
        }
        String valuepageSize = request().getQueryString("pageSize");
        Integer pageSize;
        if (valuepageSize != null) {
            pageSize = Integer.parseInt(valuepageSize);
        } else {
            pageSize = null;
        }
        String valuepageNumber = request().getQueryString("pageNumber");
        Integer pageNumber;
        if (valuepageNumber != null) {
            pageNumber = Integer.parseInt(valuepageNumber);
        } else {
            pageNumber = null;
        }
        ScmOrganisations obj = imp.getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getSCMOrganisationRepository(String organization,String scm,String scmOrganisation,String repository) throws Exception {
        String valuecredentialId = request().getQueryString("credentialId");
        String credentialId;
        if (valuecredentialId != null) {
            credentialId = valuecredentialId;
        } else {
            credentialId = null;
        }
        ScmOrganisations obj = imp.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getSCMOrganisations(String organization,String scm) throws Exception {
        String valuecredentialId = request().getQueryString("credentialId");
        String credentialId;
        if (valuecredentialId != null) {
            credentialId = valuecredentialId;
        } else {
            credentialId = null;
        }
        ScmOrganisations obj = imp.getSCMOrganisations(organization, scm, credentialId);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getUser(String organization,String user) throws Exception {
        User obj = imp.getUser(organization, user);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getUserFavorites(String user) throws Exception {
        UserFavorites obj = imp.getUserFavorites(user);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getUsers(String organization) throws Exception {
        User obj = imp.getUsers(organization);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result postPipelineRun(String organization,String pipeline,String run) throws Exception {
        QueueItemImpl obj = imp.postPipelineRun(organization, pipeline, run);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result postPipelineRuns(String organization,String pipeline) throws Exception {
        QueueItemImpl obj = imp.postPipelineRuns(organization, pipeline);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result putPipelineFavorite(String organization,String pipeline) throws Exception {
        JsonNode nodebody = request().body().asJson();
        Body body;
        if (nodebody != null) {
            body = mapper.readValue(nodebody.toString(), Body.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(body);
            }
        } else {
            throw new IllegalArgumentException("'Body' parameter is required");
        }
        FavoriteImpl obj = imp.putPipelineFavorite(organization, pipeline, body);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result putPipelineRun(String organization,String pipeline,String run) throws Exception {
        String valueblocking = request().getQueryString("blocking");
        String blocking;
        if (valueblocking != null) {
            blocking = valueblocking;
        } else {
            blocking = null;
        }
        String valuetimeOutInSecs = request().getQueryString("timeOutInSecs");
        Integer timeOutInSecs;
        if (valuetimeOutInSecs != null) {
            timeOutInSecs = Integer.parseInt(valuetimeOutInSecs);
        } else {
            timeOutInSecs = null;
        }
        PipelineRun obj = imp.putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result search() throws Exception {
        String valueq = request().getQueryString("q");
        String q;
        if (valueq != null) {
            q = valueq;
        } else {
            throw new IllegalArgumentException("'q' parameter is required");
        }
        String obj = imp.search(q);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result searchClasses() throws Exception {
        String valueq = request().getQueryString("q");
        String q;
        if (valueq != null) {
            q = valueq;
        } else {
            throw new IllegalArgumentException("'q' parameter is required");
        }
        String obj = imp.searchClasses(q);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }
}
