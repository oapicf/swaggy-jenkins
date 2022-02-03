package controllers;

import apimodels.ComputerSet;
import apimodels.FreeStyleBuild;
import apimodels.FreeStyleProject;
import apimodels.Hudson;
import apimodels.ListView;
import apimodels.Queue;

import com.google.inject.Inject;
import com.typesafe.config.Config;
import play.mvc.Controller;
import play.mvc.Http;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import play.mvc.Result;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.JsonNode;
import openapitools.OpenAPIUtils;
import openapitools.SecurityAPIUtils;
import static play.mvc.Results.ok;
import static play.mvc.Results.unauthorized;
import play.libs.Files.TemporaryFile;

import javax.validation.constraints.*;

@SuppressWarnings("RedundantThrows")
public abstract class RemoteAccessApiControllerImpInterface {
    @Inject private Config configuration;
    @Inject private SecurityAPIUtils securityAPIUtils;
    private ObjectMapper mapper = new ObjectMapper();

    public Result getComputerHttp(Http.Request request, @NotNull Integer depth) throws Exception {
        ComputerSet obj = getComputer(request, depth);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract ComputerSet getComputer(Http.Request request, @NotNull Integer depth) throws Exception;

    public Result getJenkinsHttp(Http.Request request) throws Exception {
        Hudson obj = getJenkins(request);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract Hudson getJenkins(Http.Request request) throws Exception;

    public Result getJobHttp(Http.Request request, String name) throws Exception {
        FreeStyleProject obj = getJob(request, name);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract FreeStyleProject getJob(Http.Request request, String name) throws Exception;

    public Result getJobConfigHttp(Http.Request request, String name) throws Exception {
        String obj = getJobConfig(request, name);
        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract String getJobConfig(Http.Request request, String name) throws Exception;

    public Result getJobLastBuildHttp(Http.Request request, String name) throws Exception {
        FreeStyleBuild obj = getJobLastBuild(request, name);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract FreeStyleBuild getJobLastBuild(Http.Request request, String name) throws Exception;

    public Result getJobProgressiveTextHttp(Http.Request request, String name, String number, @NotNull String start) throws Exception {
        getJobProgressiveText(request, name, number, start);
        return ok();

    }

    public abstract void getJobProgressiveText(Http.Request request, String name, String number, @NotNull String start) throws Exception;

    public Result getQueueHttp(Http.Request request) throws Exception {
        Queue obj = getQueue(request);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract Queue getQueue(Http.Request request) throws Exception;

    public Result getQueueItemHttp(Http.Request request, String number) throws Exception {
        Queue obj = getQueueItem(request, number);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract Queue getQueueItem(Http.Request request, String number) throws Exception;

    public Result getViewHttp(Http.Request request, String name) throws Exception {
        ListView obj = getView(request, name);

        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }

        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract ListView getView(Http.Request request, String name) throws Exception;

    public Result getViewConfigHttp(Http.Request request, String name) throws Exception {
        String obj = getViewConfig(request, name);
        JsonNode result = mapper.valueToTree(obj);

        return ok(result);

    }

    public abstract String getViewConfig(Http.Request request, String name) throws Exception;

    public Result headJenkinsHttp(Http.Request request) throws Exception {
        headJenkins(request);
        return ok();

    }

    public abstract void headJenkins(Http.Request request) throws Exception;

    public Result postCreateItemHttp(Http.Request request, @NotNull String name, String from, String mode, String jenkinsCrumb, String contentType, String body) throws Exception {
        postCreateItem(request, name, from, mode, jenkinsCrumb, contentType, body);
        return ok();

    }

    public abstract void postCreateItem(Http.Request request, @NotNull String name, String from, String mode, String jenkinsCrumb, String contentType, String body) throws Exception;

    public Result postCreateViewHttp(Http.Request request, @NotNull String name, String jenkinsCrumb, String contentType, String body) throws Exception {
        postCreateView(request, name, jenkinsCrumb, contentType, body);
        return ok();

    }

    public abstract void postCreateView(Http.Request request, @NotNull String name, String jenkinsCrumb, String contentType, String body) throws Exception;

    public Result postJobBuildHttp(Http.Request request, String name, @NotNull String json, String token, String jenkinsCrumb) throws Exception {
        postJobBuild(request, name, json, token, jenkinsCrumb);
        return ok();

    }

    public abstract void postJobBuild(Http.Request request, String name, @NotNull String json, String token, String jenkinsCrumb) throws Exception;

    public Result postJobConfigHttp(Http.Request request, String name, String body, String jenkinsCrumb) throws Exception {
        postJobConfig(request, name, body, jenkinsCrumb);
        return ok();

    }

    public abstract void postJobConfig(Http.Request request, String name, String body, String jenkinsCrumb) throws Exception;

    public Result postJobDeleteHttp(Http.Request request, String name, String jenkinsCrumb) throws Exception {
        postJobDelete(request, name, jenkinsCrumb);
        return ok();

    }

    public abstract void postJobDelete(Http.Request request, String name, String jenkinsCrumb) throws Exception;

    public Result postJobDisableHttp(Http.Request request, String name, String jenkinsCrumb) throws Exception {
        postJobDisable(request, name, jenkinsCrumb);
        return ok();

    }

    public abstract void postJobDisable(Http.Request request, String name, String jenkinsCrumb) throws Exception;

    public Result postJobEnableHttp(Http.Request request, String name, String jenkinsCrumb) throws Exception {
        postJobEnable(request, name, jenkinsCrumb);
        return ok();

    }

    public abstract void postJobEnable(Http.Request request, String name, String jenkinsCrumb) throws Exception;

    public Result postJobLastBuildStopHttp(Http.Request request, String name, String jenkinsCrumb) throws Exception {
        postJobLastBuildStop(request, name, jenkinsCrumb);
        return ok();

    }

    public abstract void postJobLastBuildStop(Http.Request request, String name, String jenkinsCrumb) throws Exception;

    public Result postViewConfigHttp(Http.Request request, String name, String body, String jenkinsCrumb) throws Exception {
        postViewConfig(request, name, body, jenkinsCrumb);
        return ok();

    }

    public abstract void postViewConfig(Http.Request request, String name, String body, String jenkinsCrumb) throws Exception;

}
