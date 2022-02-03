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
import apimodels.UNKNOWN_BASE_TYPE;
import apimodels.User;

import com.google.inject.Inject;
import com.typesafe.config.Config;
import play.mvc.Controller;
import play.mvc.Http;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import play.mvc.Result;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.JsonNode;
import openapitools.OpenAPIUtils;
import openapitools.SecurityAPIUtils;
import static play.mvc.Results.ok;
import static play.mvc.Results.unauthorized;
import play.libs.Files.TemporaryFile;

import javax.validation.constraints.*;

@SuppressWarnings("RedundantThrows")
public abstract class BlueOceanApiControllerImpInterface {
    @Inject private Config configuration;
    @Inject private SecurityAPIUtils securityAPIUtils;
    private ObjectMapper mapper = new ObjectMapper();

    public Result deletePipelineQueueItemHttp(Http.Request request, String organization, String pipeline, String queue) throws Exception {
        deletePipelineQueueItem(request, organization, pipeline, queue);
        return ok();

    }

    public abstract void deletePipelineQueueItem(Http.Request request, String organization, String pipeline, String queue) throws Exception;

    public Result getAuthenticatedUserHttp(Http.Request request, String organization) throws Exception {
        User obj = getAuthenticatedUser(request, organization);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract User getAuthenticatedUser(Http.Request request, String organization) throws Exception;

    public Result getClassesHttp(Http.Request request, String propertyClass) throws Exception {
        String obj = getClasses(request, propertyClass);
        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract String getClasses(Http.Request request, String propertyClass) throws Exception;

    public Result getJsonWebKeyHttp(Http.Request request, Integer key) throws Exception {
        String obj = getJsonWebKey(request, key);
        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract String getJsonWebKey(Http.Request request, Integer key) throws Exception;

    public Result getJsonWebTokenHttp(Http.Request request, Integer expiryTimeInMins, Integer maxExpiryTimeInMins) throws Exception {
        String obj = getJsonWebToken(request, expiryTimeInMins, maxExpiryTimeInMins);
        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract String getJsonWebToken(Http.Request request, Integer expiryTimeInMins, Integer maxExpiryTimeInMins) throws Exception;

    public Result getOrganisationHttp(Http.Request request, String organization) throws Exception {
        Organisation obj = getOrganisation(request, organization);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract Organisation getOrganisation(Http.Request request, String organization) throws Exception;

    public Result getOrganisationsHttp(Http.Request request) throws Exception {
        List<Organisation> obj = getOrganisations(request);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            for (Organisation curItem : obj) {
                OpenAPIUtils.validate(curItem);
            }
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract List<Organisation> getOrganisations(Http.Request request) throws Exception;

    public Result getPipelineHttp(Http.Request request, String organization, String pipeline) throws Exception {
        Pipeline obj = getPipeline(request, organization, pipeline);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract Pipeline getPipeline(Http.Request request, String organization, String pipeline) throws Exception;

    public Result getPipelineActivitiesHttp(Http.Request request, String organization, String pipeline) throws Exception {
        List<PipelineActivity> obj = getPipelineActivities(request, organization, pipeline);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            for (PipelineActivity curItem : obj) {
                OpenAPIUtils.validate(curItem);
            }
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract List<PipelineActivity> getPipelineActivities(Http.Request request, String organization, String pipeline) throws Exception;

    public Result getPipelineBranchHttp(Http.Request request, String organization, String pipeline, String branch) throws Exception {
        BranchImpl obj = getPipelineBranch(request, organization, pipeline, branch);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract BranchImpl getPipelineBranch(Http.Request request, String organization, String pipeline, String branch) throws Exception;

    public Result getPipelineBranchRunHttp(Http.Request request, String organization, String pipeline, String branch, String run) throws Exception {
        PipelineRun obj = getPipelineBranchRun(request, organization, pipeline, branch, run);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract PipelineRun getPipelineBranchRun(Http.Request request, String organization, String pipeline, String branch, String run) throws Exception;

    public Result getPipelineBranchesHttp(Http.Request request, String organization, String pipeline) throws Exception {
        MultibranchPipeline obj = getPipelineBranches(request, organization, pipeline);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract MultibranchPipeline getPipelineBranches(Http.Request request, String organization, String pipeline) throws Exception;

    public Result getPipelineFolderHttp(Http.Request request, String organization, String folder) throws Exception {
        PipelineFolderImpl obj = getPipelineFolder(request, organization, folder);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract PipelineFolderImpl getPipelineFolder(Http.Request request, String organization, String folder) throws Exception;

    public Result getPipelineFolderPipelineHttp(Http.Request request, String organization, String pipeline, String folder) throws Exception {
        PipelineImpl obj = getPipelineFolderPipeline(request, organization, pipeline, folder);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract PipelineImpl getPipelineFolderPipeline(Http.Request request, String organization, String pipeline, String folder) throws Exception;

    public Result getPipelineQueueHttp(Http.Request request, String organization, String pipeline) throws Exception {
        List<QueueItemImpl> obj = getPipelineQueue(request, organization, pipeline);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            for (QueueItemImpl curItem : obj) {
                OpenAPIUtils.validate(curItem);
            }
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract List<QueueItemImpl> getPipelineQueue(Http.Request request, String organization, String pipeline) throws Exception;

    public Result getPipelineRunHttp(Http.Request request, String organization, String pipeline, String run) throws Exception {
        PipelineRun obj = getPipelineRun(request, organization, pipeline, run);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract PipelineRun getPipelineRun(Http.Request request, String organization, String pipeline, String run) throws Exception;

    public Result getPipelineRunLogHttp(Http.Request request, String organization, String pipeline, String run, Integer start, Boolean download) throws Exception {
        String obj = getPipelineRunLog(request, organization, pipeline, run, start, download);
        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract String getPipelineRunLog(Http.Request request, String organization, String pipeline, String run, Integer start, Boolean download) throws Exception;

    public Result getPipelineRunNodeHttp(Http.Request request, String organization, String pipeline, String run, String node) throws Exception {
        PipelineRunNode obj = getPipelineRunNode(request, organization, pipeline, run, node);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract PipelineRunNode getPipelineRunNode(Http.Request request, String organization, String pipeline, String run, String node) throws Exception;

    public Result getPipelineRunNodeStepHttp(Http.Request request, String organization, String pipeline, String run, String node, String step) throws Exception {
        PipelineStepImpl obj = getPipelineRunNodeStep(request, organization, pipeline, run, node, step);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract PipelineStepImpl getPipelineRunNodeStep(Http.Request request, String organization, String pipeline, String run, String node, String step) throws Exception;

    public Result getPipelineRunNodeStepLogHttp(Http.Request request, String organization, String pipeline, String run, String node, String step) throws Exception {
        String obj = getPipelineRunNodeStepLog(request, organization, pipeline, run, node, step);
        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract String getPipelineRunNodeStepLog(Http.Request request, String organization, String pipeline, String run, String node, String step) throws Exception;

    public Result getPipelineRunNodeStepsHttp(Http.Request request, String organization, String pipeline, String run, String node) throws Exception {
        List<PipelineStepImpl> obj = getPipelineRunNodeSteps(request, organization, pipeline, run, node);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            for (PipelineStepImpl curItem : obj) {
                OpenAPIUtils.validate(curItem);
            }
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract List<PipelineStepImpl> getPipelineRunNodeSteps(Http.Request request, String organization, String pipeline, String run, String node) throws Exception;

    public Result getPipelineRunNodesHttp(Http.Request request, String organization, String pipeline, String run) throws Exception {
        List<PipelineRunNode> obj = getPipelineRunNodes(request, organization, pipeline, run);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            for (PipelineRunNode curItem : obj) {
                OpenAPIUtils.validate(curItem);
            }
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract List<PipelineRunNode> getPipelineRunNodes(Http.Request request, String organization, String pipeline, String run) throws Exception;

    public Result getPipelineRunsHttp(Http.Request request, String organization, String pipeline) throws Exception {
        List<PipelineRun> obj = getPipelineRuns(request, organization, pipeline);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            for (PipelineRun curItem : obj) {
                OpenAPIUtils.validate(curItem);
            }
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract List<PipelineRun> getPipelineRuns(Http.Request request, String organization, String pipeline) throws Exception;

    public Result getPipelinesHttp(Http.Request request, String organization) throws Exception {
        List<Pipeline> obj = getPipelines(request, organization);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            for (Pipeline curItem : obj) {
                OpenAPIUtils.validate(curItem);
            }
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract List<Pipeline> getPipelines(Http.Request request, String organization) throws Exception;

    public Result getSCMHttp(Http.Request request, String organization, String scm) throws Exception {
        GithubScm obj = getSCM(request, organization, scm);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract GithubScm getSCM(Http.Request request, String organization, String scm) throws Exception;

    public Result getSCMOrganisationRepositoriesHttp(Http.Request request, String organization, String scm, String scmOrganisation, String credentialId, Integer pageSize, Integer pageNumber) throws Exception {
        List<GithubOrganization> obj = getSCMOrganisationRepositories(request, organization, scm, scmOrganisation, credentialId, pageSize, pageNumber);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            for (GithubOrganization curItem : obj) {
                OpenAPIUtils.validate(curItem);
            }
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract List<GithubOrganization> getSCMOrganisationRepositories(Http.Request request, String organization, String scm, String scmOrganisation, String credentialId, Integer pageSize, Integer pageNumber) throws Exception;

    public Result getSCMOrganisationRepositoryHttp(Http.Request request, String organization, String scm, String scmOrganisation, String repository, String credentialId) throws Exception {
        List<GithubOrganization> obj = getSCMOrganisationRepository(request, organization, scm, scmOrganisation, repository, credentialId);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            for (GithubOrganization curItem : obj) {
                OpenAPIUtils.validate(curItem);
            }
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract List<GithubOrganization> getSCMOrganisationRepository(Http.Request request, String organization, String scm, String scmOrganisation, String repository, String credentialId) throws Exception;

    public Result getSCMOrganisationsHttp(Http.Request request, String organization, String scm, String credentialId) throws Exception {
        List<GithubOrganization> obj = getSCMOrganisations(request, organization, scm, credentialId);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            for (GithubOrganization curItem : obj) {
                OpenAPIUtils.validate(curItem);
            }
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract List<GithubOrganization> getSCMOrganisations(Http.Request request, String organization, String scm, String credentialId) throws Exception;

    public Result getUserHttp(Http.Request request, String organization, String user) throws Exception {
        User obj = getUser(request, organization, user);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract User getUser(Http.Request request, String organization, String user) throws Exception;

    public Result getUserFavoritesHttp(Http.Request request, String user) throws Exception {
        List<FavoriteImpl> obj = getUserFavorites(request, user);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            for (FavoriteImpl curItem : obj) {
                OpenAPIUtils.validate(curItem);
            }
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract List<FavoriteImpl> getUserFavorites(Http.Request request, String user) throws Exception;

    public Result getUsersHttp(Http.Request request, String organization) throws Exception {
        User obj = getUsers(request, organization);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract User getUsers(Http.Request request, String organization) throws Exception;

    public Result postPipelineRunHttp(Http.Request request, String organization, String pipeline, String run) throws Exception {
        QueueItemImpl obj = postPipelineRun(request, organization, pipeline, run);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract QueueItemImpl postPipelineRun(Http.Request request, String organization, String pipeline, String run) throws Exception;

    public Result postPipelineRunsHttp(Http.Request request, String organization, String pipeline) throws Exception {
        QueueItemImpl obj = postPipelineRuns(request, organization, pipeline);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract QueueItemImpl postPipelineRuns(Http.Request request, String organization, String pipeline) throws Exception;

    public Result putPipelineFavoriteHttp(Http.Request request, String organization, String pipeline, UNKNOWN_BASE_TYPE UNKNOWN_BASE_TYPE) throws Exception {
        FavoriteImpl obj = putPipelineFavorite(request, organization, pipeline, UNKNOWN_BASE_TYPE);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract FavoriteImpl putPipelineFavorite(Http.Request request, String organization, String pipeline, UNKNOWN_BASE_TYPE UNKNOWN_BASE_TYPE) throws Exception;

    public Result putPipelineRunHttp(Http.Request request, String organization, String pipeline, String run, String blocking, Integer timeOutInSecs) throws Exception {
        PipelineRun obj = putPipelineRun(request, organization, pipeline, run, blocking, timeOutInSecs);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract PipelineRun putPipelineRun(Http.Request request, String organization, String pipeline, String run, String blocking, Integer timeOutInSecs) throws Exception;

    public Result searchHttp(Http.Request request, @NotNull String q) throws Exception {
        String obj = search(request, q);
        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract String search(Http.Request request, @NotNull String q) throws Exception;

    public Result searchClassesHttp(Http.Request request, @NotNull String q) throws Exception {
        String obj = searchClasses(request, q);
        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract String searchClasses(Http.Request request, @NotNull String q) throws Exception;

}
