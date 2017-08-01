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

import javax.validation.constraints.*;

public interface RemoteAccessApiControllerImpInterface {
    HudsonmodelComputerSet getComputer() throws Exception;

    HudsonsecuritycsrfDefaultCrumbIssuer getCrumb() throws Exception;

    HudsonmodelHudson getJenkins() throws Exception;

    HudsonmodelFreeStyleProject getJob(String name) throws Exception;

    String getJobConfig(String name) throws Exception;

    HudsonmodelFreeStyleBuild getJobLastBuild(String name) throws Exception;

    void getJobProgressiveText(String name, String number,  @NotNull String start) throws Exception;

    HudsonmodelQueue getQueue() throws Exception;

    HudsonmodelQueue getQueueItem(String number) throws Exception;

    HudsonmodelListView getView(String name) throws Exception;

    String getViewConfig(String name) throws Exception;

    void headJenkins() throws Exception;

    void postCreateItem( @NotNull String name, String from, String mode, String body, String jenkinsCrumb, String contentType) throws Exception;

    void postCreateView( @NotNull String name, String body, String jenkinsCrumb, String contentType) throws Exception;

    void postJobBuild(String name,  @NotNull String json, String token, String jenkinsCrumb) throws Exception;

    void postJobConfig(String name, String body, String jenkinsCrumb) throws Exception;

    void postJobDelete(String name, String jenkinsCrumb) throws Exception;

    void postJobDisable(String name, String jenkinsCrumb) throws Exception;

    void postJobEnable(String name, String jenkinsCrumb) throws Exception;

    void postJobLastBuildStop(String name, String jenkinsCrumb) throws Exception;

    void postViewConfig(String name, String body, String jenkinsCrumb) throws Exception;

}
