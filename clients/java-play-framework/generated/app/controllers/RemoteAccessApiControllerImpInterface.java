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

import javax.validation.constraints.*;

public interface RemoteAccessApiControllerImpInterface {
    ComputerSet getComputer( @NotNull Integer depth) throws Exception;

    DefaultCrumbIssuer getCrumb() throws Exception;

    Hudson getJenkins() throws Exception;

    FreeStyleProject getJob(String name) throws Exception;

    String getJobConfig(String name) throws Exception;

    FreeStyleBuild getJobLastBuild(String name) throws Exception;

    void getJobProgressiveText(String name, String number,  @NotNull String start) throws Exception;

    Queue getQueue() throws Exception;

    Queue getQueueItem(String number) throws Exception;

    ListView getView(String name) throws Exception;

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
