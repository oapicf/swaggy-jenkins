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
import io.vertx.ext.web.handler.HttpException;

import java.util.List;
import java.util.Map;

// Implement this class

public class RemoteAccessApiImpl implements RemoteAccessApi {
    public Future<ApiResponse<ComputerSet>> getComputer(Integer depth) {
        return Future.failedFuture(new HttpException(501));
    }

    public Future<ApiResponse<Hudson>> getJenkins() {
        return Future.failedFuture(new HttpException(501));
    }

    public Future<ApiResponse<FreeStyleProject>> getJob(String name) {
        return Future.failedFuture(new HttpException(501));
    }

    public Future<ApiResponse<String>> getJobConfig(String name) {
        return Future.failedFuture(new HttpException(501));
    }

    public Future<ApiResponse<FreeStyleBuild>> getJobLastBuild(String name) {
        return Future.failedFuture(new HttpException(501));
    }

    public Future<ApiResponse<Void>> getJobProgressiveText(String name, String number, String start) {
        return Future.failedFuture(new HttpException(501));
    }

    public Future<ApiResponse<Queue>> getQueue() {
        return Future.failedFuture(new HttpException(501));
    }

    public Future<ApiResponse<Queue>> getQueueItem(String number) {
        return Future.failedFuture(new HttpException(501));
    }

    public Future<ApiResponse<ListView>> getView(String name) {
        return Future.failedFuture(new HttpException(501));
    }

    public Future<ApiResponse<String>> getViewConfig(String name) {
        return Future.failedFuture(new HttpException(501));
    }

    public Future<ApiResponse<Void>> headJenkins() {
        return Future.failedFuture(new HttpException(501));
    }

    public Future<ApiResponse<Void>> postCreateItem(String name, String from, String mode, String jenkinsCrumb, String contentType, String body) {
        return Future.failedFuture(new HttpException(501));
    }

    public Future<ApiResponse<Void>> postCreateView(String name, String jenkinsCrumb, String contentType, String body) {
        return Future.failedFuture(new HttpException(501));
    }

    public Future<ApiResponse<Void>> postJobBuild(String name, String json, String token, String jenkinsCrumb) {
        return Future.failedFuture(new HttpException(501));
    }

    public Future<ApiResponse<Void>> postJobConfig(String name, String body, String jenkinsCrumb) {
        return Future.failedFuture(new HttpException(501));
    }

    public Future<ApiResponse<Void>> postJobDelete(String name, String jenkinsCrumb) {
        return Future.failedFuture(new HttpException(501));
    }

    public Future<ApiResponse<Void>> postJobDisable(String name, String jenkinsCrumb) {
        return Future.failedFuture(new HttpException(501));
    }

    public Future<ApiResponse<Void>> postJobEnable(String name, String jenkinsCrumb) {
        return Future.failedFuture(new HttpException(501));
    }

    public Future<ApiResponse<Void>> postJobLastBuildStop(String name, String jenkinsCrumb) {
        return Future.failedFuture(new HttpException(501));
    }

    public Future<ApiResponse<Void>> postViewConfig(String name, String body, String jenkinsCrumb) {
        return Future.failedFuture(new HttpException(501));
    }

}
