package org.openapitools.server;

import org.openapitools.server.api.BaseServiceImpl;
import org.openapitools.server.api.BlueOceanServiceImpl;
import org.openapitools.server.api.RemoteAccessServiceImpl;

import io.helidon.logging.common.LogConfig;
import io.helidon.config.Config;
import io.helidon.webserver.http.HttpRouting;
import io.helidon.webserver.WebServer;

/**
* The application main class.
*/
public final class Main {

    /**
    * Cannot be instantiated.
    */
    private Main() {
    }

    /**
    * Application main entry point.
    * @param args command line arguments.
    */
    public static void main(final String[] args) {
        startServer();
    }

    /**
    * Start the server.
    * @return the created {@link WebServer} instance
    */
    static WebServer startServer() {

        // load logging configuration
        LogConfig.configureRuntime();

        // By default this will pick up application.yaml from the classpath
        Config config = Config.create();
        Config.global(config);

        WebServer webserver = WebServer.builder()
                .config(config.get("server"))
                .routing(Main::routing)
                .build()
                .start();

        System.out.println("WEB server is up! http://localhost");

        return webserver;
    }

    /**
     * Updates HTTP routing and implicitly registers observe providers.
     */
    static void routing(HttpRouting.Builder routing) {
        routing
            .register("/crumbIssuer/api/json", new BaseServiceImpl())
            .register("/", new BlueOceanServiceImpl())/* TODO - fix path or operation grouping for better performance */
            .register("/", new RemoteAccessServiceImpl())/* TODO - fix path or operation grouping for better performance */;
    }
}
