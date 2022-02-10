package org.openapitools.vertxweb.server.api;

import org.openapitools.vertxweb.server.model.ComputerSet;
import org.openapitools.vertxweb.server.model.FreeStyleBuild;
import org.openapitools.vertxweb.server.model.FreeStyleProject;
import org.openapitools.vertxweb.server.model.Hudson;
import org.openapitools.vertxweb.server.model.ListView;
import org.openapitools.vertxweb.server.model.Queue;

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

public class RemoteAccessApiHandler {

    private static final Logger logger = LoggerFactory.getLogger(RemoteAccessApiHandler.class);

    private final RemoteAccessApi api;

    public RemoteAccessApiHandler(RemoteAccessApi api) {
        this.api = api;
    }

    @Deprecated
    public RemoteAccessApiHandler() {
        this(new RemoteAccessApiImpl());
    }

    public void mount(RouterBuilder builder) {
        builder.operation("getComputer").handler(this::getComputer);
        builder.operation("getJenkins").handler(this::getJenkins);
        builder.operation("getJob").handler(this::getJob);
        builder.operation("getJobConfig").handler(this::getJobConfig);
        builder.operation("getJobLastBuild").handler(this::getJobLastBuild);
        builder.operation("getJobProgressiveText").handler(this::getJobProgressiveText);
        builder.operation("getQueue").handler(this::getQueue);
        builder.operation("getQueueItem").handler(this::getQueueItem);
        builder.operation("getView").handler(this::getView);
        builder.operation("getViewConfig").handler(this::getViewConfig);
        builder.operation("headJenkins").handler(this::headJenkins);
        builder.operation("postCreateItem").handler(this::postCreateItem);
        builder.operation("postCreateView").handler(this::postCreateView);
        builder.operation("postJobBuild").handler(this::postJobBuild);
        builder.operation("postJobConfig").handler(this::postJobConfig);
        builder.operation("postJobDelete").handler(this::postJobDelete);
        builder.operation("postJobDisable").handler(this::postJobDisable);
        builder.operation("postJobEnable").handler(this::postJobEnable);
        builder.operation("postJobLastBuildStop").handler(this::postJobLastBuildStop);
        builder.operation("postViewConfig").handler(this::postViewConfig);
    }

    private void getComputer(RoutingContext routingContext) {
        logger.info("getComputer()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        Integer depth = requestParameters.queryParameter("depth") != null ? requestParameters.queryParameter("depth").getInteger() : null;

        logger.debug("Parameter depth is {}", depth);

        api.getComputer(depth)
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

    private void getJenkins(RoutingContext routingContext) {
        logger.info("getJenkins()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);



        api.getJenkins()
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

    private void getJob(RoutingContext routingContext) {
        logger.info("getJob()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String name = requestParameters.pathParameter("name") != null ? requestParameters.pathParameter("name").getString() : null;

        logger.debug("Parameter name is {}", name);

        api.getJob(name)
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

    private void getJobConfig(RoutingContext routingContext) {
        logger.info("getJobConfig()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String name = requestParameters.pathParameter("name") != null ? requestParameters.pathParameter("name").getString() : null;

        logger.debug("Parameter name is {}", name);

        api.getJobConfig(name)
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

    private void getJobLastBuild(RoutingContext routingContext) {
        logger.info("getJobLastBuild()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String name = requestParameters.pathParameter("name") != null ? requestParameters.pathParameter("name").getString() : null;

        logger.debug("Parameter name is {}", name);

        api.getJobLastBuild(name)
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

    private void getJobProgressiveText(RoutingContext routingContext) {
        logger.info("getJobProgressiveText()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String name = requestParameters.pathParameter("name") != null ? requestParameters.pathParameter("name").getString() : null;
        String number = requestParameters.pathParameter("number") != null ? requestParameters.pathParameter("number").getString() : null;
        String start = requestParameters.queryParameter("start") != null ? requestParameters.queryParameter("start").getString() : null;

        logger.debug("Parameter name is {}", name);
        logger.debug("Parameter number is {}", number);
        logger.debug("Parameter start is {}", start);

        api.getJobProgressiveText(name, number, start)
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

    private void getQueue(RoutingContext routingContext) {
        logger.info("getQueue()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);



        api.getQueue()
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

    private void getQueueItem(RoutingContext routingContext) {
        logger.info("getQueueItem()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String number = requestParameters.pathParameter("number") != null ? requestParameters.pathParameter("number").getString() : null;

        logger.debug("Parameter number is {}", number);

        api.getQueueItem(number)
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

    private void getView(RoutingContext routingContext) {
        logger.info("getView()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String name = requestParameters.pathParameter("name") != null ? requestParameters.pathParameter("name").getString() : null;

        logger.debug("Parameter name is {}", name);

        api.getView(name)
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

    private void getViewConfig(RoutingContext routingContext) {
        logger.info("getViewConfig()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String name = requestParameters.pathParameter("name") != null ? requestParameters.pathParameter("name").getString() : null;

        logger.debug("Parameter name is {}", name);

        api.getViewConfig(name)
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

    private void headJenkins(RoutingContext routingContext) {
        logger.info("headJenkins()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);



        api.headJenkins()
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

    private void postCreateItem(RoutingContext routingContext) {
        logger.info("postCreateItem()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String name = requestParameters.queryParameter("name") != null ? requestParameters.queryParameter("name").getString() : null;
        String from = requestParameters.queryParameter("from") != null ? requestParameters.queryParameter("from").getString() : null;
        String mode = requestParameters.queryParameter("mode") != null ? requestParameters.queryParameter("mode").getString() : null;
        String jenkinsCrumb = requestParameters.headerParameter("Jenkins-Crumb") != null ? requestParameters.headerParameter("Jenkins-Crumb").getString() : null;
        String contentType = requestParameters.headerParameter("Content-Type") != null ? requestParameters.headerParameter("Content-Type").getString() : null;
        RequestParameter body = requestParameters.body();
        String body = body != null ? DatabindCodec.mapper().convertValue(body.get(), new TypeReference<String>(){}) : null;

        logger.debug("Parameter name is {}", name);
        logger.debug("Parameter from is {}", from);
        logger.debug("Parameter mode is {}", mode);
        logger.debug("Parameter jenkinsCrumb is {}", jenkinsCrumb);
        logger.debug("Parameter contentType is {}", contentType);
        logger.debug("Parameter body is {}", body);

        api.postCreateItem(name, from, mode, jenkinsCrumb, contentType, body)
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

    private void postCreateView(RoutingContext routingContext) {
        logger.info("postCreateView()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String name = requestParameters.queryParameter("name") != null ? requestParameters.queryParameter("name").getString() : null;
        String jenkinsCrumb = requestParameters.headerParameter("Jenkins-Crumb") != null ? requestParameters.headerParameter("Jenkins-Crumb").getString() : null;
        String contentType = requestParameters.headerParameter("Content-Type") != null ? requestParameters.headerParameter("Content-Type").getString() : null;
        RequestParameter body = requestParameters.body();
        String body = body != null ? DatabindCodec.mapper().convertValue(body.get(), new TypeReference<String>(){}) : null;

        logger.debug("Parameter name is {}", name);
        logger.debug("Parameter jenkinsCrumb is {}", jenkinsCrumb);
        logger.debug("Parameter contentType is {}", contentType);
        logger.debug("Parameter body is {}", body);

        api.postCreateView(name, jenkinsCrumb, contentType, body)
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

    private void postJobBuild(RoutingContext routingContext) {
        logger.info("postJobBuild()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String name = requestParameters.pathParameter("name") != null ? requestParameters.pathParameter("name").getString() : null;
        String json = requestParameters.queryParameter("json") != null ? requestParameters.queryParameter("json").getString() : null;
        String token = requestParameters.queryParameter("token") != null ? requestParameters.queryParameter("token").getString() : null;
        String jenkinsCrumb = requestParameters.headerParameter("Jenkins-Crumb") != null ? requestParameters.headerParameter("Jenkins-Crumb").getString() : null;

        logger.debug("Parameter name is {}", name);
        logger.debug("Parameter json is {}", json);
        logger.debug("Parameter token is {}", token);
        logger.debug("Parameter jenkinsCrumb is {}", jenkinsCrumb);

        api.postJobBuild(name, json, token, jenkinsCrumb)
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

    private void postJobConfig(RoutingContext routingContext) {
        logger.info("postJobConfig()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String name = requestParameters.pathParameter("name") != null ? requestParameters.pathParameter("name").getString() : null;
        RequestParameter body = requestParameters.body();
        String body = body != null ? DatabindCodec.mapper().convertValue(body.get(), new TypeReference<String>(){}) : null;
        String jenkinsCrumb = requestParameters.headerParameter("Jenkins-Crumb") != null ? requestParameters.headerParameter("Jenkins-Crumb").getString() : null;

        logger.debug("Parameter name is {}", name);
        logger.debug("Parameter body is {}", body);
        logger.debug("Parameter jenkinsCrumb is {}", jenkinsCrumb);

        api.postJobConfig(name, body, jenkinsCrumb)
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

    private void postJobDelete(RoutingContext routingContext) {
        logger.info("postJobDelete()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String name = requestParameters.pathParameter("name") != null ? requestParameters.pathParameter("name").getString() : null;
        String jenkinsCrumb = requestParameters.headerParameter("Jenkins-Crumb") != null ? requestParameters.headerParameter("Jenkins-Crumb").getString() : null;

        logger.debug("Parameter name is {}", name);
        logger.debug("Parameter jenkinsCrumb is {}", jenkinsCrumb);

        api.postJobDelete(name, jenkinsCrumb)
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

    private void postJobDisable(RoutingContext routingContext) {
        logger.info("postJobDisable()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String name = requestParameters.pathParameter("name") != null ? requestParameters.pathParameter("name").getString() : null;
        String jenkinsCrumb = requestParameters.headerParameter("Jenkins-Crumb") != null ? requestParameters.headerParameter("Jenkins-Crumb").getString() : null;

        logger.debug("Parameter name is {}", name);
        logger.debug("Parameter jenkinsCrumb is {}", jenkinsCrumb);

        api.postJobDisable(name, jenkinsCrumb)
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

    private void postJobEnable(RoutingContext routingContext) {
        logger.info("postJobEnable()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String name = requestParameters.pathParameter("name") != null ? requestParameters.pathParameter("name").getString() : null;
        String jenkinsCrumb = requestParameters.headerParameter("Jenkins-Crumb") != null ? requestParameters.headerParameter("Jenkins-Crumb").getString() : null;

        logger.debug("Parameter name is {}", name);
        logger.debug("Parameter jenkinsCrumb is {}", jenkinsCrumb);

        api.postJobEnable(name, jenkinsCrumb)
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

    private void postJobLastBuildStop(RoutingContext routingContext) {
        logger.info("postJobLastBuildStop()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String name = requestParameters.pathParameter("name") != null ? requestParameters.pathParameter("name").getString() : null;
        String jenkinsCrumb = requestParameters.headerParameter("Jenkins-Crumb") != null ? requestParameters.headerParameter("Jenkins-Crumb").getString() : null;

        logger.debug("Parameter name is {}", name);
        logger.debug("Parameter jenkinsCrumb is {}", jenkinsCrumb);

        api.postJobLastBuildStop(name, jenkinsCrumb)
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

    private void postViewConfig(RoutingContext routingContext) {
        logger.info("postViewConfig()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String name = requestParameters.pathParameter("name") != null ? requestParameters.pathParameter("name").getString() : null;
        RequestParameter body = requestParameters.body();
        String body = body != null ? DatabindCodec.mapper().convertValue(body.get(), new TypeReference<String>(){}) : null;
        String jenkinsCrumb = requestParameters.headerParameter("Jenkins-Crumb") != null ? requestParameters.headerParameter("Jenkins-Crumb").getString() : null;

        logger.debug("Parameter name is {}", name);
        logger.debug("Parameter body is {}", body);
        logger.debug("Parameter jenkinsCrumb is {}", jenkinsCrumb);

        api.postViewConfig(name, body, jenkinsCrumb)
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
