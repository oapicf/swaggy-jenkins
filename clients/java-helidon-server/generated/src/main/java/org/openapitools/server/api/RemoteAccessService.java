package org.openapitools.server.api;

import org.openapitools.server.model.ComputerSet;
import org.openapitools.server.model.FreeStyleBuild;
import org.openapitools.server.model.FreeStyleProject;
import io.helidon.http.HeaderNames;
import io.helidon.http.Headers;
import java.util.HexFormat;
import org.openapitools.server.model.Hudson;
import org.openapitools.server.model.ListView;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.util.Optional;
import org.openapitools.server.model.Queue;
import io.helidon.http.Status;

import io.helidon.webserver.http.HttpRules;
import io.helidon.webserver.http.ServerRequest;
import io.helidon.webserver.http.ServerResponse;
import io.helidon.webserver.http.HttpService;

@io.helidon.common.Generated(value = "org.openapitools.codegen.languages.JavaHelidonServerCodegen",
                             trigger = "tag = 'RemoteAccess'",
                             version = "7.24.0")
public interface RemoteAccessService extends HttpService {

    /**
     * A service registers itself by updating the routing rules.
     * @param rules the routing rules.
     */
    @Override
    default void routing(HttpRules rules) {
        rules.get("/computer/api/json", this::getComputer);
        rules.get("/api/json", this::getJenkins);
        rules.get("/job/{name}/api/json", this::getJob);
        rules.get("/job/{name}/config.xml", this::getJobConfig);
        rules.get("/job/{name}/lastBuild/api/json", this::getJobLastBuild);
        rules.get("/job/{name}/{number}/logText/progressiveText", this::getJobProgressiveText);
        rules.get("/queue/api/json", this::getQueue);
        rules.get("/queue/item/{number}/api/json", this::getQueueItem);
        rules.get("/view/{name}/api/json", this::getView);
        rules.get("/view/{name}/config.xml", this::getViewConfig);
        rules.head("/api/json", this::headJenkins);
        rules.post("/createItem", this::postCreateItem);
        rules.post("/createView", this::postCreateView);
        rules.post("/job/{name}/build", this::postJobBuild);
        rules.post("/job/{name}/config.xml", this::postJobConfig);
        rules.post("/job/{name}/doDelete", this::postJobDelete);
        rules.post("/job/{name}/disable", this::postJobDisable);
        rules.post("/job/{name}/enable", this::postJobEnable);
        rules.post("/job/{name}/lastBuild/stop", this::postJobLastBuildStop);
        rules.post("/view/{name}/config.xml", this::postViewConfig);
    }


    /**
     * GET /computer/api/json.
     *
     * @param request the server request
     * @param response the server response
     */
    void getComputer(ServerRequest request, ServerResponse response);
    /**
     * GET /api/json.
     *
     * @param request the server request
     * @param response the server response
     */
    void getJenkins(ServerRequest request, ServerResponse response);
    /**
     * GET /job/{name}/api/json.
     *
     * @param request the server request
     * @param response the server response
     */
    void getJob(ServerRequest request, ServerResponse response);
    /**
     * GET /job/{name}/config.xml.
     *
     * @param request the server request
     * @param response the server response
     */
    void getJobConfig(ServerRequest request, ServerResponse response);
    /**
     * GET /job/{name}/lastBuild/api/json.
     *
     * @param request the server request
     * @param response the server response
     */
    void getJobLastBuild(ServerRequest request, ServerResponse response);
    /**
     * GET /job/{name}/{number}/logText/progressiveText.
     *
     * @param request the server request
     * @param response the server response
     */
    void getJobProgressiveText(ServerRequest request, ServerResponse response);
    /**
     * GET /queue/api/json.
     *
     * @param request the server request
     * @param response the server response
     */
    void getQueue(ServerRequest request, ServerResponse response);
    /**
     * GET /queue/item/{number}/api/json.
     *
     * @param request the server request
     * @param response the server response
     */
    void getQueueItem(ServerRequest request, ServerResponse response);
    /**
     * GET /view/{name}/api/json.
     *
     * @param request the server request
     * @param response the server response
     */
    void getView(ServerRequest request, ServerResponse response);
    /**
     * GET /view/{name}/config.xml.
     *
     * @param request the server request
     * @param response the server response
     */
    void getViewConfig(ServerRequest request, ServerResponse response);
    /**
     * HEAD /api/json.
     *
     * @param request the server request
     * @param response the server response
     */
    void headJenkins(ServerRequest request, ServerResponse response);
    /**
     * POST /createItem.
     *
     * @param request the server request
     * @param response the server response
     */
    void postCreateItem(ServerRequest request, ServerResponse response);
    /**
     * POST /createView.
     *
     * @param request the server request
     * @param response the server response
     */
    void postCreateView(ServerRequest request, ServerResponse response);
    /**
     * POST /job/{name}/build.
     *
     * @param request the server request
     * @param response the server response
     */
    void postJobBuild(ServerRequest request, ServerResponse response);
    /**
     * POST /job/{name}/config.xml.
     *
     * @param request the server request
     * @param response the server response
     */
    void postJobConfig(ServerRequest request, ServerResponse response);
    /**
     * POST /job/{name}/doDelete.
     *
     * @param request the server request
     * @param response the server response
     */
    void postJobDelete(ServerRequest request, ServerResponse response);
    /**
     * POST /job/{name}/disable.
     *
     * @param request the server request
     * @param response the server response
     */
    void postJobDisable(ServerRequest request, ServerResponse response);
    /**
     * POST /job/{name}/enable.
     *
     * @param request the server request
     * @param response the server response
     */
    void postJobEnable(ServerRequest request, ServerResponse response);
    /**
     * POST /job/{name}/lastBuild/stop.
     *
     * @param request the server request
     * @param response the server response
     */
    void postJobLastBuildStop(ServerRequest request, ServerResponse response);
    /**
     * POST /view/{name}/config.xml.
     *
     * @param request the server request
     * @param response the server response
     */
    void postViewConfig(ServerRequest request, ServerResponse response);
}
