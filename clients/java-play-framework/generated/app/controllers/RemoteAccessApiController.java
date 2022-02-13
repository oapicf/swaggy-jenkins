package controllers;

import apimodels.ComputerSet;
import apimodels.FreeStyleBuild;
import apimodels.FreeStyleProject;
import apimodels.Hudson;
import apimodels.ListView;
import apimodels.Queue;

import com.typesafe.config.Config;
import play.mvc.Controller;
import play.mvc.Result;
import play.mvc.Http;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.JsonNode;
import com.google.inject.Inject;
import java.io.File;
import play.libs.Files.TemporaryFile;
import openapitools.OpenAPIUtils;
import com.fasterxml.jackson.core.type.TypeReference;

import javax.validation.constraints.*;
import com.typesafe.config.Config;

import openapitools.OpenAPIUtils.ApiAction;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2022-02-13T02:17:56.963279Z[Etc/UTC]")
public class RemoteAccessApiController extends Controller {
    private final RemoteAccessApiControllerImpInterface imp;
    private final ObjectMapper mapper;
    private final Config configuration;

    @Inject
    private RemoteAccessApiController(Config configuration, RemoteAccessApiControllerImpInterface imp) {
        this.imp = imp;
        mapper = new ObjectMapper();
        this.configuration = configuration;
    }

    @ApiAction
    public Result getComputer(Http.Request request) throws Exception {
        String valuedepth = request.getQueryString("depth");
        Integer depth;
        if (valuedepth != null) {
            depth = Integer.parseInt(valuedepth);
        } else {
            throw new IllegalArgumentException("'depth' parameter is required");
        }
        return imp.getComputerHttp(request, depth);
    }

    @ApiAction
    public Result getJenkins(Http.Request request) throws Exception {
        return imp.getJenkinsHttp(request);
    }

    @ApiAction
    public Result getJob(Http.Request request, String name) throws Exception {
        return imp.getJobHttp(request, name);
    }

    @ApiAction
    public Result getJobConfig(Http.Request request, String name) throws Exception {
        return imp.getJobConfigHttp(request, name);
    }

    @ApiAction
    public Result getJobLastBuild(Http.Request request, String name) throws Exception {
        return imp.getJobLastBuildHttp(request, name);
    }

    @ApiAction
    public Result getJobProgressiveText(Http.Request request, String name,String number) throws Exception {
        String valuestart = request.getQueryString("start");
        String start;
        if (valuestart != null) {
            start = valuestart;
        } else {
            throw new IllegalArgumentException("'start' parameter is required");
        }
        return imp.getJobProgressiveTextHttp(request, name, number, start);
    }

    @ApiAction
    public Result getQueue(Http.Request request) throws Exception {
        return imp.getQueueHttp(request);
    }

    @ApiAction
    public Result getQueueItem(Http.Request request, String number) throws Exception {
        return imp.getQueueItemHttp(request, number);
    }

    @ApiAction
    public Result getView(Http.Request request, String name) throws Exception {
        return imp.getViewHttp(request, name);
    }

    @ApiAction
    public Result getViewConfig(Http.Request request, String name) throws Exception {
        return imp.getViewConfigHttp(request, name);
    }

    @ApiAction
    public Result headJenkins(Http.Request request) throws Exception {
        return imp.headJenkinsHttp(request);
    }

    @ApiAction
    public Result postCreateItem(Http.Request request) throws Exception {
        JsonNode nodebody = request.body().asJson();
        String body;
        if (nodebody != null) {
            body = mapper.readValue(nodebody.toString(), String.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(body);
            }
        } else {
            body = null;
        }
        String valuename = request.getQueryString("name");
        String name;
        if (valuename != null) {
            name = valuename;
        } else {
            throw new IllegalArgumentException("'name' parameter is required");
        }
        String valuefrom = request.getQueryString("from");
        String from;
        if (valuefrom != null) {
            from = valuefrom;
        } else {
            from = null;
        }
        String valuemode = request.getQueryString("mode");
        String mode;
        if (valuemode != null) {
            mode = valuemode;
        } else {
            mode = null;
        }
        String valuejenkinsCrumb = request.header("Jenkins-Crumb").get();
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = valuejenkinsCrumb;
        } else {
            jenkinsCrumb = null;
        }
        String valuecontentType = request.header("Content-Type").get();
        String contentType;
        if (valuecontentType != null) {
            contentType = valuecontentType;
        } else {
            contentType = null;
        }
        return imp.postCreateItemHttp(request, name, from, mode, jenkinsCrumb, contentType, body);
    }

    @ApiAction
    public Result postCreateView(Http.Request request) throws Exception {
        JsonNode nodebody = request.body().asJson();
        String body;
        if (nodebody != null) {
            body = mapper.readValue(nodebody.toString(), String.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(body);
            }
        } else {
            body = null;
        }
        String valuename = request.getQueryString("name");
        String name;
        if (valuename != null) {
            name = valuename;
        } else {
            throw new IllegalArgumentException("'name' parameter is required");
        }
        String valuejenkinsCrumb = request.header("Jenkins-Crumb").get();
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = valuejenkinsCrumb;
        } else {
            jenkinsCrumb = null;
        }
        String valuecontentType = request.header("Content-Type").get();
        String contentType;
        if (valuecontentType != null) {
            contentType = valuecontentType;
        } else {
            contentType = null;
        }
        return imp.postCreateViewHttp(request, name, jenkinsCrumb, contentType, body);
    }

    @ApiAction
    public Result postJobBuild(Http.Request request, String name) throws Exception {
        String valuejson = request.getQueryString("json");
        String json;
        if (valuejson != null) {
            json = valuejson;
        } else {
            throw new IllegalArgumentException("'json' parameter is required");
        }
        String valuetoken = request.getQueryString("token");
        String token;
        if (valuetoken != null) {
            token = valuetoken;
        } else {
            token = null;
        }
        String valuejenkinsCrumb = request.header("Jenkins-Crumb").get();
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = valuejenkinsCrumb;
        } else {
            jenkinsCrumb = null;
        }
        return imp.postJobBuildHttp(request, name, json, token, jenkinsCrumb);
    }

    @ApiAction
    public Result postJobConfig(Http.Request request, String name) throws Exception {
        JsonNode nodebody = request.body().asJson();
        String body;
        if (nodebody != null) {
            body = mapper.readValue(nodebody.toString(), String.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(body);
            }
        } else {
            throw new IllegalArgumentException("'body' parameter is required");
        }
        String valuejenkinsCrumb = request.header("Jenkins-Crumb").get();
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = valuejenkinsCrumb;
        } else {
            jenkinsCrumb = null;
        }
        return imp.postJobConfigHttp(request, name, body, jenkinsCrumb);
    }

    @ApiAction
    public Result postJobDelete(Http.Request request, String name) throws Exception {
        String valuejenkinsCrumb = request.header("Jenkins-Crumb").get();
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = valuejenkinsCrumb;
        } else {
            jenkinsCrumb = null;
        }
        return imp.postJobDeleteHttp(request, name, jenkinsCrumb);
    }

    @ApiAction
    public Result postJobDisable(Http.Request request, String name) throws Exception {
        String valuejenkinsCrumb = request.header("Jenkins-Crumb").get();
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = valuejenkinsCrumb;
        } else {
            jenkinsCrumb = null;
        }
        return imp.postJobDisableHttp(request, name, jenkinsCrumb);
    }

    @ApiAction
    public Result postJobEnable(Http.Request request, String name) throws Exception {
        String valuejenkinsCrumb = request.header("Jenkins-Crumb").get();
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = valuejenkinsCrumb;
        } else {
            jenkinsCrumb = null;
        }
        return imp.postJobEnableHttp(request, name, jenkinsCrumb);
    }

    @ApiAction
    public Result postJobLastBuildStop(Http.Request request, String name) throws Exception {
        String valuejenkinsCrumb = request.header("Jenkins-Crumb").get();
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = valuejenkinsCrumb;
        } else {
            jenkinsCrumb = null;
        }
        return imp.postJobLastBuildStopHttp(request, name, jenkinsCrumb);
    }

    @ApiAction
    public Result postViewConfig(Http.Request request, String name) throws Exception {
        JsonNode nodebody = request.body().asJson();
        String body;
        if (nodebody != null) {
            body = mapper.readValue(nodebody.toString(), String.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(body);
            }
        } else {
            throw new IllegalArgumentException("'body' parameter is required");
        }
        String valuejenkinsCrumb = request.header("Jenkins-Crumb").get();
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = valuejenkinsCrumb;
        } else {
            jenkinsCrumb = null;
        }
        return imp.postViewConfigHttp(request, name, body, jenkinsCrumb);
    }

}
