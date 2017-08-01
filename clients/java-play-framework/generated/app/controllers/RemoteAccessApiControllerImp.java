package controllers;

import apimodels.HudsonmodelComputerSet;
import apimodels.HudsonmodelFreeStyleBuild;
import apimodels.HudsonmodelFreeStyleProject;
import apimodels.HudsonmodelHudson;
import apimodels.HudsonmodelListView;
import apimodels.HudsonmodelQueue;
import apimodels.HudsonsecuritycsrfDefaultCrumbIssuer;

import play.mvc.Http;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.io.FileInputStream;
import javax.validation.constraints.*;
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-07-25T10:44:57.391+10:00")

public class RemoteAccessApiControllerImp implements RemoteAccessApiControllerImpInterface {
    @Override
    public HudsonmodelComputerSet getComputer() throws Exception {
        //Do your magic!!!
        return new HudsonmodelComputerSet();
    }

    @Override
    public HudsonsecuritycsrfDefaultCrumbIssuer getCrumb() throws Exception {
        //Do your magic!!!
        return new HudsonsecuritycsrfDefaultCrumbIssuer();
    }

    @Override
    public HudsonmodelHudson getJenkins() throws Exception {
        //Do your magic!!!
        return new HudsonmodelHudson();
    }

    @Override
    public HudsonmodelFreeStyleProject getJob(String name) throws Exception {
        //Do your magic!!!
        return new HudsonmodelFreeStyleProject();
    }

    @Override
    public String getJobConfig(String name) throws Exception {
        //Do your magic!!!
        return new String();
    }

    @Override
    public HudsonmodelFreeStyleBuild getJobLastBuild(String name) throws Exception {
        //Do your magic!!!
        return new HudsonmodelFreeStyleBuild();
    }

    @Override
    public void getJobProgressiveText(String name, String number,  @NotNull String start) throws Exception {
        //Do your magic!!!
        
    }

    @Override
    public HudsonmodelQueue getQueue() throws Exception {
        //Do your magic!!!
        return new HudsonmodelQueue();
    }

    @Override
    public HudsonmodelQueue getQueueItem(String number) throws Exception {
        //Do your magic!!!
        return new HudsonmodelQueue();
    }

    @Override
    public HudsonmodelListView getView(String name) throws Exception {
        //Do your magic!!!
        return new HudsonmodelListView();
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
    public void postCreateItem( @NotNull String name, String from, String mode, String body, String jenkinsCrumb, String contentType) throws Exception {
        //Do your magic!!!
        
    }

    @Override
    public void postCreateView( @NotNull String name, String body, String jenkinsCrumb, String contentType) throws Exception {
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
