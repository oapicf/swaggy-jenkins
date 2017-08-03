package io.swagger.server.api.verticle;

import io.swagger.server.api.model.ComputerSet;
import io.swagger.server.api.model.DefaultCrumbIssuer;
import io.swagger.server.api.model.FreeStyleBuild;
import io.swagger.server.api.model.FreeStyleProject;
import io.swagger.server.api.model.Hudson;
import io.swagger.server.api.model.ListView;
import io.swagger.server.api.MainApiException;
import io.swagger.server.api.model.Queue;

import io.vertx.core.AsyncResult;
import io.vertx.core.Handler;

import java.util.List;
import java.util.Map;

public interface RemoteAccessApi  {
    //getComputer
    void getComputer(Integer depth, Handler<AsyncResult<ComputerSet>> handler);
    
    //getCrumb
    void getCrumb(Handler<AsyncResult<DefaultCrumbIssuer>> handler);
    
    //getJenkins
    void getJenkins(Handler<AsyncResult<Hudson>> handler);
    
    //getJob
    void getJob(String name, Handler<AsyncResult<FreeStyleProject>> handler);
    
    //getJobConfig
    void getJobConfig(String name, Handler<AsyncResult<String>> handler);
    
    //getJobLastBuild
    void getJobLastBuild(String name, Handler<AsyncResult<FreeStyleBuild>> handler);
    
    //getJobProgressiveText
    void getJobProgressiveText(String name, String number, String start, Handler<AsyncResult<Void>> handler);
    
    //getQueue
    void getQueue(Handler<AsyncResult<Queue>> handler);
    
    //getQueueItem
    void getQueueItem(String number, Handler<AsyncResult<Queue>> handler);
    
    //getView
    void getView(String name, Handler<AsyncResult<ListView>> handler);
    
    //getViewConfig
    void getViewConfig(String name, Handler<AsyncResult<String>> handler);
    
    //headJenkins
    void headJenkins(Handler<AsyncResult<Void>> handler);
    
    //postCreateItem
    void postCreateItem(String name, String from, String mode, String body, String jenkinsCrumb, String contentType, Handler<AsyncResult<Void>> handler);
    
    //postCreateView
    void postCreateView(String name, String body, String jenkinsCrumb, String contentType, Handler<AsyncResult<Void>> handler);
    
    //postJobBuild
    void postJobBuild(String name, String json, String token, String jenkinsCrumb, Handler<AsyncResult<Void>> handler);
    
    //postJobConfig
    void postJobConfig(String name, String body, String jenkinsCrumb, Handler<AsyncResult<Void>> handler);
    
    //postJobDelete
    void postJobDelete(String name, String jenkinsCrumb, Handler<AsyncResult<Void>> handler);
    
    //postJobDisable
    void postJobDisable(String name, String jenkinsCrumb, Handler<AsyncResult<Void>> handler);
    
    //postJobEnable
    void postJobEnable(String name, String jenkinsCrumb, Handler<AsyncResult<Void>> handler);
    
    //postJobLastBuildStop
    void postJobLastBuildStop(String name, String jenkinsCrumb, Handler<AsyncResult<Void>> handler);
    
    //postViewConfig
    void postViewConfig(String name, String body, String jenkinsCrumb, Handler<AsyncResult<Void>> handler);
    
}
