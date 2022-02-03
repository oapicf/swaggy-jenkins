package org.openapitools.server.api.verticle;

import org.openapitools.server.api.model.DefaultCrumbIssuer;
import org.openapitools.server.api.MainApiException;

import io.vertx.core.AsyncResult;
import io.vertx.core.Handler;

import java.util.List;
import java.util.Map;

public interface BaseApi  {
    //getCrumb
    void getCrumb(Handler<AsyncResult<DefaultCrumbIssuer>> handler);

}
