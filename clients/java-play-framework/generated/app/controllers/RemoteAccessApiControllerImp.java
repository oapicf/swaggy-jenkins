package controllers;

import apimodels.ComputerSet;
import apimodels.DefaultCrumbIssuer;
import apimodels.FreeStyleBuild;
import apimodels.FreeStyleProject;
import apimodels.Hudson;
import apimodels.ListView;
import apimodels.Queue;

import play.mvc.Http;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.io.FileInputStream;
import javax.validation.constraints.*;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2018-08-21T04:38:33.847Z[GMT]")

public class RemoteAccessApiControllerImp implements RemoteAccessApiControllerImpInterface {
    @Override
    public ComputerSet getComputer( @NotNull Integer depth) throws Exception {
        //Do your magic!!!
        return new ComputerSet();
    }

    @Override
    public DefaultCrumbIssuer getCrumb() throws Exception {
        //Do your magic!!!
        return new DefaultCrumbIssuer();
    }

    @Override
    public Hudson getJenkins() throws Exception {
        //Do your magic!!!
        return new Hudson();
    }

    @Override
    public FreeStyleProject getJob(String name) throws Exception {
        //Do your magic!!!
        return new FreeStyleProject();
    }

    @Override
    public String getJobConfig(String name) throws Exception {
        //Do your magic!!!
        return new String();
    }

    @Override
    public FreeStyleBuild getJobLastBuild(String name) throws Exception {
        //Do your magic!!!
        return new FreeStyleBuild();
    }

    @Override
    public void getJobProgressiveText(String name, String number,  @NotNull String start) throws Exception {
        //Do your magic!!!
    }

    @Override
    public Queue getQueue() throws Exception {
        //Do your magic!!!
        return new Queue();
    }

    @Override
    public Queue getQueueItem(String number) throws Exception {
        //Do your magic!!!
        return new Queue();
    }

    @Override
    public ListView getView(String name) throws Exception {
        //Do your magic!!!
        return new ListView();
    }

    @Override
    public String getViewConfig(String name) throws Exception {
        //Do your magic!!!
        return new String();
    }

    @Override
    public void headJenkins() throws Exception {
        //Do your magic!!!
    }

    @Override
    public void postCreateItem( @NotNull String name, String from, String mode, String jenkinsCrumb, String contentType, String body) throws Exception {
        //Do your magic!!!
    }

    @Override
    public void postCreateView( @NotNull String name, String jenkinsCrumb, String contentType, String body) throws Exception {
        //Do your magic!!!
    }

    @Override
    public void postJobBuild(String name,  @NotNull String json, String token, String jenkinsCrumb) throws Exception {
        //Do your magic!!!
    }

    @Override
    public void postJobConfig(String name, String body, String jenkinsCrumb) throws Exception {
        //Do your magic!!!
    }

    @Override
    public void postJobDelete(String name, String jenkinsCrumb) throws Exception {
        //Do your magic!!!
    }

    @Override
    public void postJobDisable(String name, String jenkinsCrumb) throws Exception {
        //Do your magic!!!
    }

    @Override
    public void postJobEnable(String name, String jenkinsCrumb) throws Exception {
        //Do your magic!!!
    }

    @Override
    public void postJobLastBuildStop(String name, String jenkinsCrumb) throws Exception {
        //Do your magic!!!
    }

    @Override
    public void postViewConfig(String name, String body, String jenkinsCrumb) throws Exception {
        //Do your magic!!!
    }

}
