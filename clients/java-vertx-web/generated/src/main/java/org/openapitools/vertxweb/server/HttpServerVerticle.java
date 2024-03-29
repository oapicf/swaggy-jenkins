package org.openapitools.vertxweb.server;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.Promise;
import io.vertx.core.http.HttpServerOptions;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.RoutingContext;
import io.vertx.ext.web.openapi.RouterBuilder;
import io.vertx.ext.web.openapi.RouterBuilderOptions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.openapitools.vertxweb.server.api.BaseApiHandler;
import org.openapitools.vertxweb.server.api.BaseApiImpl;
import org.openapitools.vertxweb.server.api.BlueOceanApiHandler;
import org.openapitools.vertxweb.server.api.BlueOceanApiImpl;
import org.openapitools.vertxweb.server.api.RemoteAccessApiHandler;
import org.openapitools.vertxweb.server.api.RemoteAccessApiImpl;

public class HttpServerVerticle extends AbstractVerticle {

    private static final Logger logger = LoggerFactory.getLogger(HttpServerVerticle.class);
    private static final String specFile = "src/main/resources/openapi.yaml";

    
    private final BaseApiHandler baseHandler = new BaseApiHandler(new BaseApiImpl());
    private final BlueOceanApiHandler blueOceanHandler = new BlueOceanApiHandler(new BlueOceanApiImpl());
    private final RemoteAccessApiHandler remoteAccessHandler = new RemoteAccessApiHandler(new RemoteAccessApiImpl());

    @Override
    public void start(Promise<Void> startPromise) {
        RouterBuilder.create(vertx, specFile)
            .map(builder -> {
              builder.setOptions(new RouterBuilderOptions()
                  // For production use case, you need to enable this flag and provide the proper security handler
                  .setRequireSecurityHandlers(false)
              );
              
              baseHandler.mount(builder);
              blueOceanHandler.mount(builder);
              remoteAccessHandler.mount(builder);

              Router router = builder.createRouter();
              router.errorHandler(400, this::validationFailureHandler);

              return router;
            })
            .compose(router ->
                vertx.createHttpServer()
                    .requestHandler(router)
                    .listen(8080)
            )
            .onSuccess(server -> logger.info("Http verticle deploy successful"))
            .onFailure(t -> logger.error("Http verticle failed to deploy", t))
            // Complete the start promise
            .<Void>mapEmpty().onComplete(startPromise);
    }

    private void validationFailureHandler(RoutingContext rc) {
         rc.response().setStatusCode(400)
                 .end("Bad Request : " + rc.failure().getMessage());
    }
}
