package controllers;

import apimodels.ComputerSet;
import apimodels.DefaultCrumbIssuer;
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
import java.io.IOException;
import swagger.SwaggerUtils;
import com.fasterxml.jackson.core.type.TypeReference;

import javax.validation.constraints.*;

import swagger.SwaggerUtils.ApiAction;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-08-03T23:33:33.060Z")

public class RemoteAccessApiController extends Controller {

    private final RemoteAccessApiControllerImp imp;
    private final ObjectMapper mapper;

    @Inject
    private RemoteAccessApiController(RemoteAccessApiControllerImp imp) {
        this.imp = imp;
        mapper = new ObjectMapper();
    }


    @ApiAction
    public Result getComputer() throws Exception {
        String valuedepth = request().getQueryString("depth");
        Integer depth;

        depth = Integer.parseInt(valuedepth);

        ComputerSet obj = imp.getComputer(depth);
        obj.validate();
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
        
        
    }

    @ApiAction
    public Result getCrumb() throws Exception {
        DefaultCrumbIssuer obj = imp.getCrumb();
        obj.validate();
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
        
        
    }

    @ApiAction
    public Result getJenkins() throws Exception {
        Hudson obj = imp.getJenkins();
        obj.validate();
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
        
        
    }

    @ApiAction
    public Result getJob(String name) throws Exception {
        FreeStyleProject obj = imp.getJob(name);
        obj.validate();
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
        obj.validate();
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
        
        
    }

    @ApiAction
    public Result getJobProgressiveText(String name,String number) throws Exception {
        String valuestart = request().getQueryString("start");
        String start;

        start = (String)valuestart;

        imp.getJobProgressiveText(name, number, start);
        
        return ok();
        
    }

    @ApiAction
    public Result getQueue() throws Exception {
        Queue obj = imp.getQueue();
        obj.validate();
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
        
        
    }

    @ApiAction
    public Result getQueueItem(String number) throws Exception {
        Queue obj = imp.getQueueItem(number);
        obj.validate();
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
        
        
    }

    @ApiAction
    public Result getView(String name) throws Exception {
        ListView obj = imp.getView(name);
        obj.validate();
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
        
        body.validate();
        } else {
            body = null;
        }
        String valuename = request().getQueryString("name");
        String name;

        name = (String)valuename;

        String valuefrom = request().getQueryString("from");
        String from;
        if (valuefrom != null) {
            from = (String)valuefrom;
        
        } else {
            from = null;
        }
        String valuemode = request().getQueryString("mode");
        String mode;
        if (valuemode != null) {
            mode = (String)valuemode;
        
        } else {
            mode = null;
        }
        String valuejenkinsCrumb = request().getHeader("Jenkins-Crumb");
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = (String)valuejenkinsCrumb;
        
        } else {
            jenkinsCrumb = null;
        }
        String valuecontentType = request().getHeader("Content-Type");
        String contentType;
        if (valuecontentType != null) {
            contentType = (String)valuecontentType;
        
        } else {
            contentType = null;
        }
        imp.postCreateItem(name, from, mode, body, jenkinsCrumb, contentType);
        
        return ok();
        
    }

    @ApiAction
    public Result postCreateView() throws Exception {
        JsonNode nodebody = request().body().asJson();
        String body;
        if (nodebody != null) {
            body = mapper.readValue(nodebody.toString(), String.class);
        
        body.validate();
        } else {
            body = null;
        }
        String valuename = request().getQueryString("name");
        String name;

        name = (String)valuename;

        String valuejenkinsCrumb = request().getHeader("Jenkins-Crumb");
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = (String)valuejenkinsCrumb;
        
        } else {
            jenkinsCrumb = null;
        }
        String valuecontentType = request().getHeader("Content-Type");
        String contentType;
        if (valuecontentType != null) {
            contentType = (String)valuecontentType;
        
        } else {
            contentType = null;
        }
        imp.postCreateView(name, body, jenkinsCrumb, contentType);
        
        return ok();
        
    }

    @ApiAction
    public Result postJobBuild(String name) throws Exception {
        String valuejson = request().getQueryString("json");
        String json;

        json = (String)valuejson;

        String valuetoken = request().getQueryString("token");
        String token;
        if (valuetoken != null) {
            token = (String)valuetoken;
        
        } else {
            token = null;
        }
        String valuejenkinsCrumb = request().getHeader("Jenkins-Crumb");
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = (String)valuejenkinsCrumb;
        
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

        body = mapper.readValue(nodebody.toString(), String.class);
        body.validate();

        String valuejenkinsCrumb = request().getHeader("Jenkins-Crumb");
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = (String)valuejenkinsCrumb;
        
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
            jenkinsCrumb = (String)valuejenkinsCrumb;
        
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
            jenkinsCrumb = (String)valuejenkinsCrumb;
        
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
            jenkinsCrumb = (String)valuejenkinsCrumb;
        
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
            jenkinsCrumb = (String)valuejenkinsCrumb;
        
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

        body = mapper.readValue(nodebody.toString(), String.class);
        body.validate();

        String valuejenkinsCrumb = request().getHeader("Jenkins-Crumb");
        String jenkinsCrumb;
        if (valuejenkinsCrumb != null) {
            jenkinsCrumb = (String)valuejenkinsCrumb;
        
        } else {
            jenkinsCrumb = null;
        }
        imp.postViewConfig(name, body, jenkinsCrumb);
        
        return ok();
        
    }
}
