package org.openapitools.vertxweb.server.api;

import org.openapitools.vertxweb.server.model.DefaultCrumbIssuer;

import org.openapitools.vertxweb.server.ApiResponse;

import io.vertx.core.Future;
import io.vertx.core.json.JsonObject;
import io.vertx.ext.web.handler.HttpException;

import java.util.List;
import java.util.Map;

// Implement this class

public class BaseApiImpl implements BaseApi {
    public Future<ApiResponse<DefaultCrumbIssuer>> getCrumb() {
        return Future.failedFuture(new HttpException(501));
    }

}
