package controllers;

import apimodels.ComputerSet;
import apimodels.FreeStyleBuild;
import apimodels.FreeStyleProject;
import apimodels.Hudson;
import apimodels.ListView;
import apimodels.Queue;

import play.mvc.Http;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.io.FileInputStream;
import play.libs.Files.TemporaryFile;
import javax.validation.constraints.*;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2022-02-09T13:04:45.190637Z[Etc/UTC]")
public class RemoteAccessApiControllerImp extends RemoteAccessApiControllerImpInterface {
    @Override
    public ComputerSet getComputer(Http.Request request, @NotNull Integer depth) throws Exception {
        //Do your magic!!!
        return new ComputerSet();
    }

    @Override
    public Hudson getJenkins(Http.Request request) throws Exception {
        //Do your magic!!!
        return new Hudson();
    }

    @Override
    public FreeStyleProject getJob(Http.Request request, String name) throws Exception {
        //Do your magic!!!
        return new FreeStyleProject();
    }

    @Override
    public String getJobConfig(Http.Request request, String name) throws Exception {
        //Do your magic!!!
        return new String();
    }

    @Override
    public FreeStyleBuild getJobLastBuild(Http.Request request, String name) throws Exception {
        //Do your magic!!!
        return new FreeStyleBuild();
    }

    @Override
    public void getJobProgressiveText(Http.Request request, String name, String number, @NotNull String start) throws Exception {
        //Do your magic!!!
    }

    @Override
    public Queue getQueue(Http.Request request) throws Exception {
        //Do your magic!!!
        return new Queue();
    }

    @Override
    public Queue getQueueItem(Http.Request request, String number) throws Exception {
        //Do your magic!!!
        return new Queue();
    }

    @Override
    public ListView getView(Http.Request request, String name) throws Exception {
        //Do your magic!!!
        return new ListView();
    }

    @Override
    public String getViewConfig(Http.Request request, String name) throws Exception {
        //Do your magic!!!
        return new String();
    }

    @Override
    public void headJenkins(Http.Request request) throws Exception {
        //Do your magic!!!
    }

    @Override
    public void postCreateItem(Http.Request request, @NotNull String name, String from, String mode, String jenkinsCrumb, String contentType, String body) throws Exception {
        //Do your magic!!!
    }

    @Override
    public void postCreateView(Http.Request request, @NotNull String name, String jenkinsCrumb, String contentType, String body) throws Exception {
        //Do your magic!!!
    }

    @Override
    public void postJobBuild(Http.Request request, String name, @NotNull String json, String token, String jenkinsCrumb) throws Exception {
        //Do your magic!!!
    }

    @Override
    public void postJobConfig(Http.Request request, String name, String body, String jenkinsCrumb) throws Exception {
        //Do your magic!!!
    }

    @Override
    public void postJobDelete(Http.Request request, String name, String jenkinsCrumb) throws Exception {
        //Do your magic!!!
    }

    @Override
    public void postJobDisable(Http.Request request, String name, String jenkinsCrumb) throws Exception {
        //Do your magic!!!
    }

    @Override
    public void postJobEnable(Http.Request request, String name, String jenkinsCrumb) throws Exception {
        //Do your magic!!!
    }

    @Override
    public void postJobLastBuildStop(Http.Request request, String name, String jenkinsCrumb) throws Exception {
        //Do your magic!!!
    }

    @Override
    public void postViewConfig(Http.Request request, String name, String body, String jenkinsCrumb) throws Exception {
        //Do your magic!!!
    }

}
