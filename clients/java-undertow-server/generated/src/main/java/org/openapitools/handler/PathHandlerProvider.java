package org.openapitools.handler;

import com.networknt.config.Config;
import com.networknt.server.HandlerProvider;
import io.undertow.Handlers;
import io.undertow.server.HttpHandler;
import io.undertow.server.HttpServerExchange;
import io.undertow.util.Methods;

public class PathHandlerProvider implements HandlerProvider {

    public HttpHandler getHandler() {
        HttpHandler handler = Handlers.routing()


            .add(Methods.GET, "//crumbIssuer/api/json", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getCrumb");
                        }
                    })


            .add(Methods.DELETE, "//blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("deletePipelineQueueItem");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/user/", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getAuthenticatedUser");
                        }
                    })


            .add(Methods.GET, "//blue/rest/classes/{class}", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getClasses");
                        }
                    })


            .add(Methods.GET, "//jwt-auth/jwks/{key}", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getJsonWebKey");
                        }
                    })


            .add(Methods.GET, "//jwt-auth/token", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getJsonWebToken");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getOrganisation");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getOrganisations");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/pipelines/{pipeline}", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipeline");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/pipelines/{pipeline}/activities", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelineActivities");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelineBranch");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelineBranchRun");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/pipelines/{pipeline}/branches", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelineBranches");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/pipelines/{folder}/", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelineFolder");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelineFolderPipeline");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/pipelines/{pipeline}/queue", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelineQueue");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelineRun");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelineRunLog");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelineRunNode");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelineRunNodeStep");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelineRunNodeStepLog");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelineRunNodeSteps");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelineRunNodes");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelineRuns");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/pipelines/", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getPipelines");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/scm/{scm}", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getSCM");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getSCMOrganisationRepositories");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getSCMOrganisationRepository");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/scm/{scm}/organizations", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getSCMOrganisations");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/users/{user}", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getUser");
                        }
                    })


            .add(Methods.GET, "//blue/rest/users/{user}/favorites", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getUserFavorites");
                        }
                    })


            .add(Methods.GET, "//blue/rest/organizations/{organization}/users/", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getUsers");
                        }
                    })


            .add(Methods.POST, "//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("postPipelineRun");
                        }
                    })


            .add(Methods.POST, "//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("postPipelineRuns");
                        }
                    })


            .add(Methods.PUT, "//blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("putPipelineFavorite");
                        }
                    })


            .add(Methods.PUT, "//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("putPipelineRun");
                        }
                    })


            .add(Methods.GET, "//blue/rest/search/", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("search");
                        }
                    })


            .add(Methods.GET, "//blue/rest/classes/", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("searchClasses");
                        }
                    })


            .add(Methods.GET, "//computer/api/json", new HttpHandler() {
                        public void handleRequest(HttpServerExchange exchange) throws Exception {
                            exchange.getResponseSender().send("getComputer");
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

