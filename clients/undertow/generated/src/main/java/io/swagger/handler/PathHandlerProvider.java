package io.swagger.handler;

import com.networknt.config.Config;
import com.networknt.server.HandlerProvider;
import io.undertow.Handlers;
import io.undertow.server.HttpHandler;
import io.undertow.server.HttpServerExchange;
import io.undertow.util.Methods;

public class PathHandlerProvider implements HandlerProvider {

    public HttpHandler getHandler() {
        HttpHandler handler = Handlers.routing()


            .add(Methods.GET, "//blue/rest/organizations/{organisation}/user/", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getAuthenticatedUser");
                        }
                    })


            .add(Methods.GET, "//blue/rest/classes/{class}", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getClasses");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organisation}", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getOrganisation");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getOrganisations");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelineBranchByOrg");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelineBranchesByOrg");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organisation}/pipelines/{pipeline}", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelineByOrg");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organisation}/pipelines/{folder}/", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelineFolderByOrg");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline}", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelineFolderByOrg_0");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organisation}/pipelines/", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelinesByOrg");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organisation}/users/{user}", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getUser");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organisation}/users/", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getUsers");
                        }
                    })


            .add(Methods.GET, "//blue/rest/classes/", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("search");
                        }
                    })


            .add(Methods.GET, "//blue/rest/search/", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("search_0");
                        }
                    })


            .add(Methods.GET, "//computer/api/json?depth=1", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getComputer");
                        }
                    })


            .add(Methods.GET, "//crumbIssuer/api/json", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getCrumb");
                        }
                    })


            .add(Methods.GET, "//api/json", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getJenkins");
                        }
                    })


            .add(Methods.GET, "//job/{name}/api/json", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getJob");
                        }
                    })


            .add(Methods.GET, "//job/{name}/config.xml", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getJobConfig");
                        }
                    })


            .add(Methods.GET, "//job/{name}/lastBuild/api/json", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getJobLastBuild");
                        }
                    })


            .add(Methods.GET, "//job/{name}/{number}/logText/progressiveText", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getJobProgressiveText");
                        }
                    })


            .add(Methods.GET, "//queue/api/json", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getQueue");
                        }
                    })


            .add(Methods.GET, "//queue/item/{number}/api/json", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getQueueItem");
                        }
                    })


            .add(Methods.GET, "//view/{name}/api/json", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getView");
                        }
                    })


            .add(Methods.GET, "//view/{name}/config.xml", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getViewConfig");
                        }
                    })


            .add(Methods.HEAD, "//api/json", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("headJenkins");
                        }
                    })


            .add(Methods.POST, "//createItem", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("postCreateItem");
                        }
                    })


            .add(Methods.POST, "//createView", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("postCreateView");
                        }
                    })


            .add(Methods.POST, "//job/{name}/build", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("postJobBuild");
                        }
                    })


            .add(Methods.POST, "//job/{name}/config.xml", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("postJobConfig");
                        }
                    })


            .add(Methods.POST, "//job/{name}/doDelete", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("postJobDelete");
                        }
                    })


            .add(Methods.POST, "//job/{name}/disable", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("postJobDisable");
                        }
                    })


            .add(Methods.POST, "//job/{name}/enable", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("postJobEnable");
                        }
                    })


            .add(Methods.POST, "//job/{name}/lastBuild/stop", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("postJobLastBuildStop");
                        }
                    })


            .add(Methods.POST, "//view/{name}/config.xml", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("postViewConfig");
                        }
                    })

        ;
        return handler;
    }
}

