package org.openapitools.vertxweb.server.api;

import org.openapitools.vertxweb.server.model.ComputerSet;
import org.openapitools.vertxweb.server.model.FreeStyleBuild;
import org.openapitools.vertxweb.server.model.FreeStyleProject;
import org.openapitools.vertxweb.server.model.Hudson;
import org.openapitools.vertxweb.server.model.ListView;
import org.openapitools.vertxweb.server.model.Queue;

import org.openapitools.vertxweb.server.ApiResponse;

import io.vertx.core.Future;
import io.vertx.core.json.JsonObject;

import java.util.List;
import java.util.Map;

public interface RemoteAccessApi  {
    Future<ApiResponse<ComputerSet>> getComputer(Integer depth);
    Future<ApiResponse<Hudson>> getJenkins();
    Future<ApiResponse<FreeStyleProject>> getJob(String name);
    Future<ApiResponse<String>> getJobConfig(String name);
    Future<ApiResponse<FreeStyleBuild>> getJobLastBuild(String name);
    Future<ApiResponse<Void>> getJobProgressiveText(String name, String number, String start);
    Future<ApiResponse<Queue>> getQueue();
    Future<ApiResponse<Queue>> getQueueItem(String number);
    Future<ApiResponse<ListView>> getView(String name);
    Future<ApiResponse<String>> getViewConfig(String name);
    Future<ApiResponse<Void>> headJenkins();
    Future<ApiResponse<Void>> postCreateItem(String name, String from, String mode, String jenkinsCrumb, String contentType, String body);
    Future<ApiResponse<Void>> postCreateView(String name, String jenkinsCrumb, String contentType, String body);
    Future<ApiResponse<Void>> postJobBuild(String name, String json, String token, String jenkinsCrumb);
    Future<ApiResponse<Void>> postJobConfig(String name, String body, String jenkinsCrumb);
    Future<ApiResponse<Void>> postJobDelete(String name, String jenkinsCrumb);
    Future<ApiResponse<Void>> postJobDisable(String name, String jenkinsCrumb);
    Future<ApiResponse<Void>> postJobEnable(String name, String jenkinsCrumb);
    Future<ApiResponse<Void>> postJobLastBuildStop(String name, String jenkinsCrumb);
    Future<ApiResponse<Void>> postViewConfig(String name, String body, String jenkinsCrumb);
}
