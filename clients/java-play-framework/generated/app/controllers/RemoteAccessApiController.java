package controllers;

import apimodels.ComputerSet;
import apimodels.FreeStyleBuild;
import apimodels.FreeStyleProject;
import apimodels.Hudson;
import apimodels.ListView;
import apimodels.Queue;

import play.mvc.Controller;
import play.mvc.Result;
import play.mvc.Http;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.JsonNode;
import com.google.inject.Inject;
import java.io.File;
import openapitools.OpenAPIUtils;
import com.fasterxml.jackson.core.type.TypeReference;

import javax.validation.constraints.*;
import play.Configuration;

import openapitools.OpenAPIUtils.ApiAction;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2019-04-10T13:18:27.094Z[GMT]")

public class RemoteAccessApiController extends Controller {

    private final RemoteAccessApiControllerImpInterface imp;
    private final ObjectMapper mapper;
    private final Configuration configuration;

    @Inject
    private RemoteAccessApiController(Configuration configuration, RemoteAccessApiControllerImpInterface imp) {
        this.imp = imp;
        mapper = new ObjectMapper();
        this.configuration = configuration;
    }


    @ApiAction
    public Result getComputer() throws Exception {
        String valuedepth = request().getQueryString("depth");
        Integer depth;
        if (valuedepth != null) {
            depth = Integer.parseInt(valuedepth);
        } else {
            throw new IllegalArgumentException("'depth' parameter is required");
        }
        ComputerSet obj = imp.getComputer(depth);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getJenkins() throws Exception {
        Hudson obj = imp.getJenkins();
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getJob(String name) throws Exception {
        FreeStyleProject obj = imp.getJob(name);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getJobConfig(String name) throws Exception {
        String obj = imp.getJobConfig(name);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getJobLastBuild(String name) throws Exception {
        FreeStyleBuild obj = imp.getJobLastBuild(name);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getJobProgressiveText(String name,String number) throws Exception {
        String valuestart = request().getQueryString("start");
        String start;
        if (valuestart != null) {
            start = valuestart;
        } else {
            throw new IllegalArgumentException("'start' parameter is required");
        }
        imp.getJobProgressiveText(name, number, start);
        return ok();
    }

    @ApiAction
    public Result getQueue() throws Exception {
        Queue obj = imp.getQueue();
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getQueueItem(String number) throws Exception {
        Queue obj = imp.getQueueItem(number);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getView(String name) throws Exception {
        ListView obj = imp.getView(name);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result getViewConfig(String name) throws Exception {
        String obj = imp.getViewConfig(name);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result headJenkins() throws Exception {
        imp.headJenkins();
        return ok();
    }

    @ApiAction
    public Result postCreateItem() throws Exception {
        JsonNode nodebody = request().body().asJson();
        String body;
        if (nodebody != null) {
            body = mapper.readValue(nodebody.toString(), String.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(body);
            }
        } else {
            body = null;
        }
        String valuename = request().getQueryString("name");
        String name;
        if (valuename != null) {
            name = valuename;
        } else {
            throw new IllegalArgumentException("'name' parameter is required");
        }
        String valuefrom = request().getQueryString("from");
        String from;
        if (valuefrom != null) {
            from = valuefrom;
        } else {
            from = null;
        }
        String valuemode = request().getQueryString("mode");
        String mode;
        if (valuemode != null) {
            mode = valuemode;
        } else {
            mode = null;
        }
        String valuejenkinsCrumb = request().getHeader("Jenkins-Crumb");
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = valuejenkinsCrumb;
        } else {
            jenkinsCrumb = null;
        }
        String valuecontentType = request().getHeader("Content-Type");
        String contentType;
        if (valuecontentType != null) {
            contentType = valuecontentType;
        } else {
            contentType = null;
        }
        imp.postCreateItem(name, from, mode, jenkinsCrumb, contentType, body);
        return ok();
    }

    @ApiAction
    public Result postCreateView() throws Exception {
        JsonNode nodebody = request().body().asJson();
        String body;
        if (nodebody != null) {
            body = mapper.readValue(nodebody.toString(), String.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(body);
            }
        } else {
            body = null;
        }
        String valuename = request().getQueryString("name");
        String name;
        if (valuename != null) {
            name = valuename;
        } else {
            throw new IllegalArgumentException("'name' parameter is required");
        }
        String valuejenkinsCrumb = request().getHeader("Jenkins-Crumb");
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = valuejenkinsCrumb;
        } else {
            jenkinsCrumb = null;
        }
        String valuecontentType = request().getHeader("Content-Type");
        String contentType;
        if (valuecontentType != null) {
            contentType = valuecontentType;
        } else {
            contentType = null;
        }
        imp.postCreateView(name, jenkinsCrumb, contentType, body);
        return ok();
    }

    @ApiAction
    public Result postJobBuild(String name) throws Exception {
        String valuejson = request().getQueryString("json");
        String json;
        if (valuejson != null) {
            json = valuejson;
        } else {
            throw new IllegalArgumentException("'json' parameter is required");
        }
        String valuetoken = request().getQueryString("token");
        String token;
        if (valuetoken != null) {
            token = valuetoken;
        } else {
            token = null;
        }
        String valuejenkinsCrumb = request().getHeader("Jenkins-Crumb");
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = valuejenkinsCrumb;
        } else {
            jenkinsCrumb = null;
        }
        imp.postJobBuild(name, json, token, jenkinsCrumb);
        return ok();
    }

    @ApiAction
    public Result postJobConfig(String name) throws Exception {
        JsonNode nodebody = request().body().asJson();
        String body;
        if (nodebody != null) {
            body = mapper.readValue(nodebody.toString(), String.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(body);
            }
        } else {
            throw new IllegalArgumentException("'body' parameter is required");
        }
        String valuejenkinsCrumb = request().getHeader("Jenkins-Crumb");
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = valuejenkinsCrumb;
        } else {
            jenkinsCrumb = null;
        }
        imp.postJobConfig(name, body, jenkinsCrumb);
        return ok();
    }

    @ApiAction
    public Result postJobDelete(String name) throws Exception {
        String valuejenkinsCrumb = request().getHeader("Jenkins-Crumb");
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = valuejenkinsCrumb;
        } else {
            jenkinsCrumb = null;
        }
        imp.postJobDelete(name, jenkinsCrumb);
        return ok();
    }

    @ApiAction
    public Result postJobDisable(String name) throws Exception {
        String valuejenkinsCrumb = request().getHeader("Jenkins-Crumb");
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = valuejenkinsCrumb;
        } else {
            jenkinsCrumb = null;
        }
        imp.postJobDisable(name, jenkinsCrumb);
        return ok();
    }

    @ApiAction
    public Result postJobEnable(String name) throws Exception {
        String valuejenkinsCrumb = request().getHeader("Jenkins-Crumb");
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = valuejenkinsCrumb;
        } else {
            jenkinsCrumb = null;
        }
        imp.postJobEnable(name, jenkinsCrumb);
        return ok();
    }

    @ApiAction
    public Result postJobLastBuildStop(String name) throws Exception {
        String valuejenkinsCrumb = request().getHeader("Jenkins-Crumb");
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = valuejenkinsCrumb;
        } else {
            jenkinsCrumb = null;
        }
        imp.postJobLastBuildStop(name, jenkinsCrumb);
        return ok();
    }

    @ApiAction
    public Result postViewConfig(String name) throws Exception {
        JsonNode nodebody = request().body().asJson();
        String body;
        if (nodebody != null) {
            body = mapper.readValue(nodebody.toString(), String.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(body);
            }
        } else {
            throw new IllegalArgumentException("'body' parameter is required");
        }
        String valuejenkinsCrumb = request().getHeader("Jenkins-Crumb");
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = valuejenkinsCrumb;
        } else {
            jenkinsCrumb = null;
        }
        imp.postViewConfig(name, body, jenkinsCrumb);
        return ok();
    }
}
