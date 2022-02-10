package org.openapitools.vertxweb.server.api;

import org.openapitools.vertxweb.server.model.DefaultCrumbIssuer;

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

public class BaseApiHandler {

    private static final Logger logger = LoggerFactory.getLogger(BaseApiHandler.class);

    private final BaseApi api;

    public BaseApiHandler(BaseApi api) {
        this.api = api;
    }

    @Deprecated
    public BaseApiHandler() {
        this(new BaseApiImpl());
    }

    public void mount(RouterBuilder builder) {
        builder.operation("getCrumb").handler(this::getCrumb);
    }

    private void getCrumb(RoutingContext routingContext) {
        logger.info("getCrumb()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);



        api.getCrumb()
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
