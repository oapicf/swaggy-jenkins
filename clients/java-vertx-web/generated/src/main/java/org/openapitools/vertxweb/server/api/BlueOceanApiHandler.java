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

import com.fasterxml.jackson.core.type.TypeReference;
import io.vertx.core.json.jackson.DatabindCodec;
import io.vertx.ext.web.openapi.RouterBuilder;
import io.vertx.ext.web.validation.RequestParameters;
import io.vertx.ext.web.validation.RequestParameter;
import io.vertx.ext.web.validation.ValidationHandler;
import io.vertx.ext.web.RoutingContext;
import io.vertx.core.json.JsonObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;
import java.util.Map;

public class BlueOceanApiHandler {

    private static final Logger logger = LoggerFactory.getLogger(BlueOceanApiHandler.class);

    private final BlueOceanApi api;

    public BlueOceanApiHandler(BlueOceanApi api) {
        this.api = api;
    }

    @Deprecated
    public BlueOceanApiHandler() {
        this(new BlueOceanApiImpl());
    }

    public void mount(RouterBuilder builder) {
        builder.operation("deletePipelineQueueItem").handler(this::deletePipelineQueueItem);
        builder.operation("getAuthenticatedUser").handler(this::getAuthenticatedUser);
        builder.operation("getClasses").handler(this::getClasses);
        builder.operation("getJsonWebKey").handler(this::getJsonWebKey);
        builder.operation("getJsonWebToken").handler(this::getJsonWebToken);
        builder.operation("getOrganisation").handler(this::getOrganisation);
        builder.operation("getOrganisations").handler(this::getOrganisations);
        builder.operation("getPipeline").handler(this::getPipeline);
        builder.operation("getPipelineActivities").handler(this::getPipelineActivities);
        builder.operation("getPipelineBranch").handler(this::getPipelineBranch);
        builder.operation("getPipelineBranchRun").handler(this::getPipelineBranchRun);
        builder.operation("getPipelineBranches").handler(this::getPipelineBranches);
        builder.operation("getPipelineFolder").handler(this::getPipelineFolder);
        builder.operation("getPipelineFolderPipeline").handler(this::getPipelineFolderPipeline);
        builder.operation("getPipelineQueue").handler(this::getPipelineQueue);
        builder.operation("getPipelineRun").handler(this::getPipelineRun);
        builder.operation("getPipelineRunLog").handler(this::getPipelineRunLog);
        builder.operation("getPipelineRunNode").handler(this::getPipelineRunNode);
        builder.operation("getPipelineRunNodeStep").handler(this::getPipelineRunNodeStep);
        builder.operation("getPipelineRunNodeStepLog").handler(this::getPipelineRunNodeStepLog);
        builder.operation("getPipelineRunNodeSteps").handler(this::getPipelineRunNodeSteps);
        builder.operation("getPipelineRunNodes").handler(this::getPipelineRunNodes);
        builder.operation("getPipelineRuns").handler(this::getPipelineRuns);
        builder.operation("getPipelines").handler(this::getPipelines);
        builder.operation("getSCM").handler(this::getSCM);
        builder.operation("getSCMOrganisationRepositories").handler(this::getSCMOrganisationRepositories);
        builder.operation("getSCMOrganisationRepository").handler(this::getSCMOrganisationRepository);
        builder.operation("getSCMOrganisations").handler(this::getSCMOrganisations);
        builder.operation("getUser").handler(this::getUser);
        builder.operation("getUserFavorites").handler(this::getUserFavorites);
        builder.operation("getUsers").handler(this::getUsers);
        builder.operation("postPipelineRun").handler(this::postPipelineRun);
        builder.operation("postPipelineRuns").handler(this::postPipelineRuns);
        builder.operation("putPipelineFavorite").handler(this::putPipelineFavorite);
        builder.operation("putPipelineRun").handler(this::putPipelineRun);
        builder.operation("search").handler(this::search);
        builder.operation("searchClasses").handler(this::searchClasses);
    }

    private void deletePipelineQueueItem(RoutingContext routingContext) {
        logger.info("deletePipelineQueueItem()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String pipeline = requestParameters.pathParameter("pipeline") != null ? requestParameters.pathParameter("pipeline").getString() : null;
        String queue = requestParameters.pathParameter("queue") != null ? requestParameters.pathParameter("queue").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter pipeline is {}", pipeline);
        logger.debug("Parameter queue is {}", queue);

        api.deletePipelineQueueItem(organization, pipeline, queue)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getAuthenticatedUser(RoutingContext routingContext) {
        logger.info("getAuthenticatedUser()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;

        logger.debug("Parameter organization is {}", organization);

        api.getAuthenticatedUser(organization)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getClasses(RoutingContext routingContext) {
        logger.info("getClasses()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String propertyClass = requestParameters.pathParameter("class") != null ? requestParameters.pathParameter("class").getString() : null;

        logger.debug("Parameter propertyClass is {}", propertyClass);

        api.getClasses(propertyClass)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getJsonWebKey(RoutingContext routingContext) {
        logger.info("getJsonWebKey()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        Integer key = requestParameters.pathParameter("key") != null ? requestParameters.pathParameter("key").getInteger() : null;

        logger.debug("Parameter key is {}", key);

        api.getJsonWebKey(key)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getJsonWebToken(RoutingContext routingContext) {
        logger.info("getJsonWebToken()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        Integer expiryTimeInMins = requestParameters.queryParameter("expiryTimeInMins") != null ? requestParameters.queryParameter("expiryTimeInMins").getInteger() : null;
        Integer maxExpiryTimeInMins = requestParameters.queryParameter("maxExpiryTimeInMins") != null ? requestParameters.queryParameter("maxExpiryTimeInMins").getInteger() : null;

        logger.debug("Parameter expiryTimeInMins is {}", expiryTimeInMins);
        logger.debug("Parameter maxExpiryTimeInMins is {}", maxExpiryTimeInMins);

        api.getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getOrganisation(RoutingContext routingContext) {
        logger.info("getOrganisation()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;

        logger.debug("Parameter organization is {}", organization);

        api.getOrganisation(organization)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getOrganisations(RoutingContext routingContext) {
        logger.info("getOrganisations()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);



        api.getOrganisations()
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getPipeline(RoutingContext routingContext) {
        logger.info("getPipeline()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String pipeline = requestParameters.pathParameter("pipeline") != null ? requestParameters.pathParameter("pipeline").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter pipeline is {}", pipeline);

        api.getPipeline(organization, pipeline)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getPipelineActivities(RoutingContext routingContext) {
        logger.info("getPipelineActivities()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String pipeline = requestParameters.pathParameter("pipeline") != null ? requestParameters.pathParameter("pipeline").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter pipeline is {}", pipeline);

        api.getPipelineActivities(organization, pipeline)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getPipelineBranch(RoutingContext routingContext) {
        logger.info("getPipelineBranch()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String pipeline = requestParameters.pathParameter("pipeline") != null ? requestParameters.pathParameter("pipeline").getString() : null;
        String branch = requestParameters.pathParameter("branch") != null ? requestParameters.pathParameter("branch").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter pipeline is {}", pipeline);
        logger.debug("Parameter branch is {}", branch);

        api.getPipelineBranch(organization, pipeline, branch)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getPipelineBranchRun(RoutingContext routingContext) {
        logger.info("getPipelineBranchRun()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String pipeline = requestParameters.pathParameter("pipeline") != null ? requestParameters.pathParameter("pipeline").getString() : null;
        String branch = requestParameters.pathParameter("branch") != null ? requestParameters.pathParameter("branch").getString() : null;
        String run = requestParameters.pathParameter("run") != null ? requestParameters.pathParameter("run").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter pipeline is {}", pipeline);
        logger.debug("Parameter branch is {}", branch);
        logger.debug("Parameter run is {}", run);

        api.getPipelineBranchRun(organization, pipeline, branch, run)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getPipelineBranches(RoutingContext routingContext) {
        logger.info("getPipelineBranches()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String pipeline = requestParameters.pathParameter("pipeline") != null ? requestParameters.pathParameter("pipeline").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter pipeline is {}", pipeline);

        api.getPipelineBranches(organization, pipeline)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getPipelineFolder(RoutingContext routingContext) {
        logger.info("getPipelineFolder()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String folder = requestParameters.pathParameter("folder") != null ? requestParameters.pathParameter("folder").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter folder is {}", folder);

        api.getPipelineFolder(organization, folder)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getPipelineFolderPipeline(RoutingContext routingContext) {
        logger.info("getPipelineFolderPipeline()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String pipeline = requestParameters.pathParameter("pipeline") != null ? requestParameters.pathParameter("pipeline").getString() : null;
        String folder = requestParameters.pathParameter("folder") != null ? requestParameters.pathParameter("folder").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter pipeline is {}", pipeline);
        logger.debug("Parameter folder is {}", folder);

        api.getPipelineFolderPipeline(organization, pipeline, folder)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getPipelineQueue(RoutingContext routingContext) {
        logger.info("getPipelineQueue()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String pipeline = requestParameters.pathParameter("pipeline") != null ? requestParameters.pathParameter("pipeline").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter pipeline is {}", pipeline);

        api.getPipelineQueue(organization, pipeline)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getPipelineRun(RoutingContext routingContext) {
        logger.info("getPipelineRun()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String pipeline = requestParameters.pathParameter("pipeline") != null ? requestParameters.pathParameter("pipeline").getString() : null;
        String run = requestParameters.pathParameter("run") != null ? requestParameters.pathParameter("run").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter pipeline is {}", pipeline);
        logger.debug("Parameter run is {}", run);

        api.getPipelineRun(organization, pipeline, run)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getPipelineRunLog(RoutingContext routingContext) {
        logger.info("getPipelineRunLog()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String pipeline = requestParameters.pathParameter("pipeline") != null ? requestParameters.pathParameter("pipeline").getString() : null;
        String run = requestParameters.pathParameter("run") != null ? requestParameters.pathParameter("run").getString() : null;
        Integer start = requestParameters.queryParameter("start") != null ? requestParameters.queryParameter("start").getInteger() : null;
        Boolean download = requestParameters.queryParameter("download") != null ? requestParameters.queryParameter("download").getBoolean() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter pipeline is {}", pipeline);
        logger.debug("Parameter run is {}", run);
        logger.debug("Parameter start is {}", start);
        logger.debug("Parameter download is {}", download);

        api.getPipelineRunLog(organization, pipeline, run, start, download)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getPipelineRunNode(RoutingContext routingContext) {
        logger.info("getPipelineRunNode()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String pipeline = requestParameters.pathParameter("pipeline") != null ? requestParameters.pathParameter("pipeline").getString() : null;
        String run = requestParameters.pathParameter("run") != null ? requestParameters.pathParameter("run").getString() : null;
        String node = requestParameters.pathParameter("node") != null ? requestParameters.pathParameter("node").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter pipeline is {}", pipeline);
        logger.debug("Parameter run is {}", run);
        logger.debug("Parameter node is {}", node);

        api.getPipelineRunNode(organization, pipeline, run, node)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getPipelineRunNodeStep(RoutingContext routingContext) {
        logger.info("getPipelineRunNodeStep()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String pipeline = requestParameters.pathParameter("pipeline") != null ? requestParameters.pathParameter("pipeline").getString() : null;
        String run = requestParameters.pathParameter("run") != null ? requestParameters.pathParameter("run").getString() : null;
        String node = requestParameters.pathParameter("node") != null ? requestParameters.pathParameter("node").getString() : null;
        String step = requestParameters.pathParameter("step") != null ? requestParameters.pathParameter("step").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter pipeline is {}", pipeline);
        logger.debug("Parameter run is {}", run);
        logger.debug("Parameter node is {}", node);
        logger.debug("Parameter step is {}", step);

        api.getPipelineRunNodeStep(organization, pipeline, run, node, step)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getPipelineRunNodeStepLog(RoutingContext routingContext) {
        logger.info("getPipelineRunNodeStepLog()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String pipeline = requestParameters.pathParameter("pipeline") != null ? requestParameters.pathParameter("pipeline").getString() : null;
        String run = requestParameters.pathParameter("run") != null ? requestParameters.pathParameter("run").getString() : null;
        String node = requestParameters.pathParameter("node") != null ? requestParameters.pathParameter("node").getString() : null;
        String step = requestParameters.pathParameter("step") != null ? requestParameters.pathParameter("step").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter pipeline is {}", pipeline);
        logger.debug("Parameter run is {}", run);
        logger.debug("Parameter node is {}", node);
        logger.debug("Parameter step is {}", step);

        api.getPipelineRunNodeStepLog(organization, pipeline, run, node, step)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getPipelineRunNodeSteps(RoutingContext routingContext) {
        logger.info("getPipelineRunNodeSteps()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String pipeline = requestParameters.pathParameter("pipeline") != null ? requestParameters.pathParameter("pipeline").getString() : null;
        String run = requestParameters.pathParameter("run") != null ? requestParameters.pathParameter("run").getString() : null;
        String node = requestParameters.pathParameter("node") != null ? requestParameters.pathParameter("node").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter pipeline is {}", pipeline);
        logger.debug("Parameter run is {}", run);
        logger.debug("Parameter node is {}", node);

        api.getPipelineRunNodeSteps(organization, pipeline, run, node)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getPipelineRunNodes(RoutingContext routingContext) {
        logger.info("getPipelineRunNodes()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String pipeline = requestParameters.pathParameter("pipeline") != null ? requestParameters.pathParameter("pipeline").getString() : null;
        String run = requestParameters.pathParameter("run") != null ? requestParameters.pathParameter("run").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter pipeline is {}", pipeline);
        logger.debug("Parameter run is {}", run);

        api.getPipelineRunNodes(organization, pipeline, run)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getPipelineRuns(RoutingContext routingContext) {
        logger.info("getPipelineRuns()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String pipeline = requestParameters.pathParameter("pipeline") != null ? requestParameters.pathParameter("pipeline").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter pipeline is {}", pipeline);

        api.getPipelineRuns(organization, pipeline)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getPipelines(RoutingContext routingContext) {
        logger.info("getPipelines()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;

        logger.debug("Parameter organization is {}", organization);

        api.getPipelines(organization)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getSCM(RoutingContext routingContext) {
        logger.info("getSCM()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String scm = requestParameters.pathParameter("scm") != null ? requestParameters.pathParameter("scm").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter scm is {}", scm);

        api.getSCM(organization, scm)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getSCMOrganisationRepositories(RoutingContext routingContext) {
        logger.info("getSCMOrganisationRepositories()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String scm = requestParameters.pathParameter("scm") != null ? requestParameters.pathParameter("scm").getString() : null;
        String scmOrganisation = requestParameters.pathParameter("scmOrganisation") != null ? requestParameters.pathParameter("scmOrganisation").getString() : null;
        String credentialId = requestParameters.queryParameter("credentialId") != null ? requestParameters.queryParameter("credentialId").getString() : null;
        Integer pageSize = requestParameters.queryParameter("pageSize") != null ? requestParameters.queryParameter("pageSize").getInteger() : null;
        Integer pageNumber = requestParameters.queryParameter("pageNumber") != null ? requestParameters.queryParameter("pageNumber").getInteger() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter scm is {}", scm);
        logger.debug("Parameter scmOrganisation is {}", scmOrganisation);
        logger.debug("Parameter credentialId is {}", credentialId);
        logger.debug("Parameter pageSize is {}", pageSize);
        logger.debug("Parameter pageNumber is {}", pageNumber);

        api.getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getSCMOrganisationRepository(RoutingContext routingContext) {
        logger.info("getSCMOrganisationRepository()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String scm = requestParameters.pathParameter("scm") != null ? requestParameters.pathParameter("scm").getString() : null;
        String scmOrganisation = requestParameters.pathParameter("scmOrganisation") != null ? requestParameters.pathParameter("scmOrganisation").getString() : null;
        String repository = requestParameters.pathParameter("repository") != null ? requestParameters.pathParameter("repository").getString() : null;
        String credentialId = requestParameters.queryParameter("credentialId") != null ? requestParameters.queryParameter("credentialId").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter scm is {}", scm);
        logger.debug("Parameter scmOrganisation is {}", scmOrganisation);
        logger.debug("Parameter repository is {}", repository);
        logger.debug("Parameter credentialId is {}", credentialId);

        api.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getSCMOrganisations(RoutingContext routingContext) {
        logger.info("getSCMOrganisations()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String scm = requestParameters.pathParameter("scm") != null ? requestParameters.pathParameter("scm").getString() : null;
        String credentialId = requestParameters.queryParameter("credentialId") != null ? requestParameters.queryParameter("credentialId").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter scm is {}", scm);
        logger.debug("Parameter credentialId is {}", credentialId);

        api.getSCMOrganisations(organization, scm, credentialId)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getUser(RoutingContext routingContext) {
        logger.info("getUser()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String user = requestParameters.pathParameter("user") != null ? requestParameters.pathParameter("user").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter user is {}", user);

        api.getUser(organization, user)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getUserFavorites(RoutingContext routingContext) {
        logger.info("getUserFavorites()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String user = requestParameters.pathParameter("user") != null ? requestParameters.pathParameter("user").getString() : null;

        logger.debug("Parameter user is {}", user);

        api.getUserFavorites(user)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void getUsers(RoutingContext routingContext) {
        logger.info("getUsers()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;

        logger.debug("Parameter organization is {}", organization);

        api.getUsers(organization)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void postPipelineRun(RoutingContext routingContext) {
        logger.info("postPipelineRun()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String pipeline = requestParameters.pathParameter("pipeline") != null ? requestParameters.pathParameter("pipeline").getString() : null;
        String run = requestParameters.pathParameter("run") != null ? requestParameters.pathParameter("run").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter pipeline is {}", pipeline);
        logger.debug("Parameter run is {}", run);

        api.postPipelineRun(organization, pipeline, run)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void postPipelineRuns(RoutingContext routingContext) {
        logger.info("postPipelineRuns()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String pipeline = requestParameters.pathParameter("pipeline") != null ? requestParameters.pathParameter("pipeline").getString() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter pipeline is {}", pipeline);

        api.postPipelineRuns(organization, pipeline)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void putPipelineFavorite(RoutingContext routingContext) {
        logger.info("putPipelineFavorite()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String pipeline = requestParameters.pathParameter("pipeline") != null ? requestParameters.pathParameter("pipeline").getString() : null;
        RequestParameter body = requestParameters.body();
        Boolean body = body != null ? DatabindCodec.mapper().convertValue(body.get(), new TypeReference<Boolean>(){}) : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter pipeline is {}", pipeline);
        logger.debug("Parameter body is {}", body);

        api.putPipelineFavorite(organization, pipeline, body)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void putPipelineRun(RoutingContext routingContext) {
        logger.info("putPipelineRun()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String organization = requestParameters.pathParameter("organization") != null ? requestParameters.pathParameter("organization").getString() : null;
        String pipeline = requestParameters.pathParameter("pipeline") != null ? requestParameters.pathParameter("pipeline").getString() : null;
        String run = requestParameters.pathParameter("run") != null ? requestParameters.pathParameter("run").getString() : null;
        String blocking = requestParameters.queryParameter("blocking") != null ? requestParameters.queryParameter("blocking").getString() : null;
        Integer timeOutInSecs = requestParameters.queryParameter("timeOutInSecs") != null ? requestParameters.queryParameter("timeOutInSecs").getInteger() : null;

        logger.debug("Parameter organization is {}", organization);
        logger.debug("Parameter pipeline is {}", pipeline);
        logger.debug("Parameter run is {}", run);
        logger.debug("Parameter blocking is {}", blocking);
        logger.debug("Parameter timeOutInSecs is {}", timeOutInSecs);

        api.putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void search(RoutingContext routingContext) {
        logger.info("search()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String q = requestParameters.queryParameter("q") != null ? requestParameters.queryParameter("q").getString() : null;

        logger.debug("Parameter q is {}", q);

        api.search(q)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void searchClasses(RoutingContext routingContext) {
        logger.info("searchClasses()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String q = requestParameters.queryParameter("q") != null ? requestParameters.queryParameter("q").getString() : null;

        logger.debug("Parameter q is {}", q);

        api.searchClasses(q)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

}
