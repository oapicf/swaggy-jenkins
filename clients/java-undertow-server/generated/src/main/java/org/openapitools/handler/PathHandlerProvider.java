/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI document version: 3.0.2-pre.0
 * Maintained by: blah+oapicf@cliffano.com
 *
 * AUTO-GENERATED FILE, DO NOT MODIFY!
 */
package org.openapitools.handler;

import com.networknt.server.HandlerProvider;
import io.undertow.Handlers;
import io.undertow.server.HttpHandler;
import io.undertow.server.HttpServerExchange;
import io.undertow.server.RoutingHandler;
import io.undertow.server.handlers.PathHandler;
import io.undertow.util.Methods;

/**
 * The default implementation for {@link HandlerProvider} and {@link PathHandlerInterface}.
 *
 * <p>There are two flavors of {@link HttpHandler}s to choose from, depending on your needs:</p>
 *
 * <ul>
 * <li>
 * <b>Stateless</b>: if a specific endpoint is called more than once from multiple sessions,
 * its state is not retained – a different {@link HttpHandler} is instantiated for every new
 * session. This is the default behavior.
 * </li>
 * <li>
 * <b>Stateful</b>: if a specific endpoint is called more than once from multiple sessions,
 * its state is retained properly. For example, if you want to keep a class property that counts
 * the number of requests or the last time a request was received.
 * </li>
 * </ul>
 * <p>Note: <b>Stateful</b> flavor is more performant than <b>Stateless</b>.</p>
 */
@SuppressWarnings("TooManyFunctions")
abstract public class PathHandlerProvider implements HandlerProvider, PathHandlerInterface {
    /**
     * Returns the default base path to access this server.
     */
    @javax.annotation.Nonnull
    public String getBasePath() {
        return "";
    }

    /**
     * Returns a stateless {@link HttpHandler} that configures all endpoints in this server.
     *
     * <p>Endpoints bound in this method do NOT start with "", and
     * it's your responsibility to configure a {@link PathHandler} with a prefix path
     * by calling {@link PathHandler#addPrefixPath} like so:</p>
     *
     * <code>pathHandler.addPrefixPath("", handler)</code>
     *
     * <p>Note: the endpoints bound to the returned {@link HttpHandler} are stateless and won't
    * retain any state between multiple sessions.</p>
     *
     * @return an {@link HttpHandler} of type {@link RoutingHandler}
     */
    @javax.annotation.Nonnull
    @Override
    public HttpHandler getHandler() {
        return getHandler(false);
    }

    /**
     * Returns a stateless {@link HttpHandler} that configures all endpoints in this server.
     *
     * <p>Note: the endpoints bound to the returned {@link HttpHandler} are stateless and won't
     * retain any state between multiple sessions.</p>
     *
     * @param withBasePath if true, all endpoints would start with ""
     * @return an {@link HttpHandler} of type {@link RoutingHandler}
     */
    @javax.annotation.Nonnull
    public HttpHandler getHandler(final boolean withBasePath) {
        return getHandler(withBasePath ? getBasePath() : "");
    }

    /**
     * Returns a stateless {@link HttpHandler} that configures all endpoints in this server.
     *
     * <p>Note: the endpoints bound to the returned {@link HttpHandler} are stateless and won't
     * retain any state between multiple sessions.</p>
     *
     * @param basePath base path to set for all endpoints
     * @return an {@link HttpHandler} of type {@link RoutingHandler}
     */
    @SuppressWarnings("Convert2Lambda")
    @javax.annotation.Nonnull
    public HttpHandler getHandler(final String basePath) {
        return Handlers.routing()
            .add(Methods.GET, basePath + "/crumbIssuer/api/json", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getCrumb().handleRequest(exchange);
                }
            })
            .add(Methods.DELETE, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    deletePipelineQueueItem().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/user/", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getAuthenticatedUser().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/classes/{class}", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getClasses().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/jwt-auth/jwks/{key}", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getJsonWebKey().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/jwt-auth/token", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getJsonWebToken().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getOrganisation().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getOrganisations().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getPipeline().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getPipelineActivities().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getPipelineBranch().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getPipelineBranchRun().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getPipelineBranches().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{folder}/", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getPipelineFolder().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getPipelineFolderPipeline().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getPipelineQueue().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getPipelineRun().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getPipelineRunLog().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getPipelineRunNode().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getPipelineRunNodeStep().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getPipelineRunNodeStepLog().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getPipelineRunNodeSteps().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getPipelineRunNodes().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getPipelineRuns().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getPipelines().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/scm/{scm}", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getSCM().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getSCMOrganisationRepositories().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getSCMOrganisationRepository().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/scm/{scm}/organizations", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getSCMOrganisations().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/users/{user}", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getUser().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/users/{user}/favorites", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getUserFavorites().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/users/", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getUsers().handleRequest(exchange);
                }
            })
            .add(Methods.POST, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    postPipelineRun().handleRequest(exchange);
                }
            })
            .add(Methods.POST, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    postPipelineRuns().handleRequest(exchange);
                }
            })
            .add(Methods.PUT, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    putPipelineFavorite().handleRequest(exchange);
                }
            })
            .add(Methods.PUT, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    putPipelineRun().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/search/", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    search().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/blue/rest/classes/", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    searchClasses().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/computer/api/json", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getComputer().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/api/json", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getJenkins().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/job/{name}/api/json", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getJob().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/job/{name}/config.xml", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getJobConfig().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/job/{name}/lastBuild/api/json", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getJobLastBuild().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/job/{name}/{number}/logText/progressiveText", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getJobProgressiveText().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/queue/api/json", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getQueue().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/queue/item/{number}/api/json", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getQueueItem().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/view/{name}/api/json", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getView().handleRequest(exchange);
                }
            })
            .add(Methods.GET, basePath + "/view/{name}/config.xml", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    getViewConfig().handleRequest(exchange);
                }
            })
            .add(Methods.HEAD, basePath + "/api/json", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    headJenkins().handleRequest(exchange);
                }
            })
            .add(Methods.POST, basePath + "/createItem", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    postCreateItem().handleRequest(exchange);
                }
            })
            .add(Methods.POST, basePath + "/createView", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    postCreateView().handleRequest(exchange);
                }
            })
            .add(Methods.POST, basePath + "/job/{name}/build", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    postJobBuild().handleRequest(exchange);
                }
            })
            .add(Methods.POST, basePath + "/job/{name}/config.xml", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    postJobConfig().handleRequest(exchange);
                }
            })
            .add(Methods.POST, basePath + "/job/{name}/doDelete", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    postJobDelete().handleRequest(exchange);
                }
            })
            .add(Methods.POST, basePath + "/job/{name}/disable", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    postJobDisable().handleRequest(exchange);
                }
            })
            .add(Methods.POST, basePath + "/job/{name}/enable", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    postJobEnable().handleRequest(exchange);
                }
            })
            .add(Methods.POST, basePath + "/job/{name}/lastBuild/stop", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    postJobLastBuildStop().handleRequest(exchange);
                }
            })
            .add(Methods.POST, basePath + "/view/{name}/config.xml", new HttpHandler() {
                @Override
                public void handleRequest(HttpServerExchange exchange) throws Exception {
                    postViewConfig().handleRequest(exchange);
                }
            })
            ;
    }

    /**
     * Returns a stateful {@link HttpHandler} that configures all endpoints in this server.
     *
     * <p>Endpoints bound in this method do NOT start with "", and
     * it's your responsibility to configure a {@link PathHandler} with a prefix path
     * by calling {@link PathHandler#addPrefixPath} like so:</p>
     *
     * <code>pathHandler.addPrefixPath("", handler)</code>
     *
     * <p>Note: the endpoints bound to the returned {@link HttpHandler} are stateful and will
     * retain any state between multiple sessions.</p>
     *
     * @return an {@link HttpHandler} of type {@link RoutingHandler}
     */
    @javax.annotation.Nonnull
    public HttpHandler getStatefulHandler() {
        return getStatefulHandler(false);
    }

    /**
     * Returns a stateful {@link HttpHandler} that configures all endpoints in this server.
     *
     * <p>Note: the endpoints bound to the returned {@link HttpHandler} are stateful and will
     * retain any state between multiple sessions.</p>
     *
     * @param withBasePath if true, all endpoints would start with ""
     * @return an {@link HttpHandler} of type {@link RoutingHandler}
     */
    @javax.annotation.Nonnull
    public HttpHandler getStatefulHandler(final boolean withBasePath) {
        return getStatefulHandler(withBasePath ? getBasePath() : "");
    }

    /**
     * Returns a stateful {@link HttpHandler} that configures all endpoints in this server.
     *
     * <p>Note: the endpoints bound to the returned {@link HttpHandler} are stateful and will
     * retain any state between multiple sessions.</p>
     *
     * @param basePath base path to set for all endpoints
     * @return an {@link HttpHandler} of type {@link RoutingHandler}
     */
    @javax.annotation.Nonnull
    public HttpHandler getStatefulHandler(final String basePath) {
        return Handlers.routing()
            .add(Methods.GET, basePath + "/crumbIssuer/api/json", getCrumb())
            .add(Methods.DELETE, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}", deletePipelineQueueItem())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/user/", getAuthenticatedUser())
            .add(Methods.GET, basePath + "/blue/rest/classes/{class}", getClasses())
            .add(Methods.GET, basePath + "/jwt-auth/jwks/{key}", getJsonWebKey())
            .add(Methods.GET, basePath + "/jwt-auth/token", getJsonWebToken())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}", getOrganisation())
            .add(Methods.GET, basePath + "/blue/rest/organizations/", getOrganisations())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}", getPipeline())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities", getPipelineActivities())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/", getPipelineBranch())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}", getPipelineBranchRun())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches", getPipelineBranches())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{folder}/", getPipelineFolder())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}", getPipelineFolderPipeline())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue", getPipelineQueue())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}", getPipelineRun())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log", getPipelineRunLog())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}", getPipelineRunNode())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}", getPipelineRunNodeStep())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log", getPipelineRunNodeStepLog())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps", getPipelineRunNodeSteps())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes", getPipelineRunNodes())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs", getPipelineRuns())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/pipelines/", getPipelines())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/scm/{scm}", getSCM())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories", getSCMOrganisationRepositories())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}", getSCMOrganisationRepository())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/scm/{scm}/organizations", getSCMOrganisations())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/users/{user}", getUser())
            .add(Methods.GET, basePath + "/blue/rest/users/{user}/favorites", getUserFavorites())
            .add(Methods.GET, basePath + "/blue/rest/organizations/{organization}/users/", getUsers())
            .add(Methods.POST, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay", postPipelineRun())
            .add(Methods.POST, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs", postPipelineRuns())
            .add(Methods.PUT, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite", putPipelineFavorite())
            .add(Methods.PUT, basePath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop", putPipelineRun())
            .add(Methods.GET, basePath + "/blue/rest/search/", search())
            .add(Methods.GET, basePath + "/blue/rest/classes/", searchClasses())
            .add(Methods.GET, basePath + "/computer/api/json", getComputer())
            .add(Methods.GET, basePath + "/api/json", getJenkins())
            .add(Methods.GET, basePath + "/job/{name}/api/json", getJob())
            .add(Methods.GET, basePath + "/job/{name}/config.xml", getJobConfig())
            .add(Methods.GET, basePath + "/job/{name}/lastBuild/api/json", getJobLastBuild())
            .add(Methods.GET, basePath + "/job/{name}/{number}/logText/progressiveText", getJobProgressiveText())
            .add(Methods.GET, basePath + "/queue/api/json", getQueue())
            .add(Methods.GET, basePath + "/queue/item/{number}/api/json", getQueueItem())
            .add(Methods.GET, basePath + "/view/{name}/api/json", getView())
            .add(Methods.GET, basePath + "/view/{name}/config.xml", getViewConfig())
            .add(Methods.HEAD, basePath + "/api/json", headJenkins())
            .add(Methods.POST, basePath + "/createItem", postCreateItem())
            .add(Methods.POST, basePath + "/createView", postCreateView())
            .add(Methods.POST, basePath + "/job/{name}/build", postJobBuild())
            .add(Methods.POST, basePath + "/job/{name}/config.xml", postJobConfig())
            .add(Methods.POST, basePath + "/job/{name}/doDelete", postJobDelete())
            .add(Methods.POST, basePath + "/job/{name}/disable", postJobDisable())
            .add(Methods.POST, basePath + "/job/{name}/enable", postJobEnable())
            .add(Methods.POST, basePath + "/job/{name}/lastBuild/stop", postJobLastBuildStop())
            .add(Methods.POST, basePath + "/view/{name}/config.xml", postViewConfig())
            ;
    }
}
