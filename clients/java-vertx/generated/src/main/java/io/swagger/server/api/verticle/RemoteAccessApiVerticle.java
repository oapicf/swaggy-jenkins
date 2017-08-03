package io.swagger.server.api.verticle;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.eventbus.Message;
import io.vertx.core.json.Json;
import io.vertx.core.json.JsonArray;
import io.vertx.core.json.JsonObject;
import io.vertx.core.logging.Logger;
import io.vertx.core.logging.LoggerFactory;

import io.swagger.server.api.model.ComputerSet;
import io.swagger.server.api.model.DefaultCrumbIssuer;
import io.swagger.server.api.model.FreeStyleBuild;
import io.swagger.server.api.model.FreeStyleProject;
import io.swagger.server.api.model.Hudson;
import io.swagger.server.api.model.ListView;
import io.swagger.server.api.MainApiException;
import io.swagger.server.api.model.Queue;

import java.util.List;
import java.util.Map;

public class RemoteAccessApiVerticle extends AbstractVerticle {
    final static Logger LOGGER = LoggerFactory.getLogger(RemoteAccessApiVerticle.class); 
    
    final static String GETCOMPUTER_SERVICE_ID = "getComputer";
    final static String GETCRUMB_SERVICE_ID = "getCrumb";
    final static String GETJENKINS_SERVICE_ID = "getJenkins";
    final static String GETJOB_SERVICE_ID = "getJob";
    final static String GETJOBCONFIG_SERVICE_ID = "getJobConfig";
    final static String GETJOBLASTBUILD_SERVICE_ID = "getJobLastBuild";
    final static String GETJOBPROGRESSIVETEXT_SERVICE_ID = "getJobProgressiveText";
    final static String GETQUEUE_SERVICE_ID = "getQueue";
    final static String GETQUEUEITEM_SERVICE_ID = "getQueueItem";
    final static String GETVIEW_SERVICE_ID = "getView";
    final static String GETVIEWCONFIG_SERVICE_ID = "getViewConfig";
    final static String HEADJENKINS_SERVICE_ID = "headJenkins";
    final static String POSTCREATEITEM_SERVICE_ID = "postCreateItem";
    final static String POSTCREATEVIEW_SERVICE_ID = "postCreateView";
    final static String POSTJOBBUILD_SERVICE_ID = "postJobBuild";
    final static String POSTJOBCONFIG_SERVICE_ID = "postJobConfig";
    final static String POSTJOBDELETE_SERVICE_ID = "postJobDelete";
    final static String POSTJOBDISABLE_SERVICE_ID = "postJobDisable";
    final static String POSTJOBENABLE_SERVICE_ID = "postJobEnable";
    final static String POSTJOBLASTBUILDSTOP_SERVICE_ID = "postJobLastBuildStop";
    final static String POSTVIEWCONFIG_SERVICE_ID = "postViewConfig";
    
    //TODO : create Implementation
    RemoteAccessApi service = new RemoteAccessApiImpl();

    @Override
    public void start() throws Exception {
        
        //Consumer for getComputer
        vertx.eventBus().<JsonObject> consumer(GETCOMPUTER_SERVICE_ID).handler(message -> {
            try {
                Integer depth = Json.mapper.readValue(message.body().getString("depth"), Integer.class);
                service.getComputer(depth, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getComputer");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getComputer", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getCrumb
        vertx.eventBus().<JsonObject> consumer(GETCRUMB_SERVICE_ID).handler(message -> {
            try {
                service.getCrumb(result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getCrumb");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getCrumb", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getJenkins
        vertx.eventBus().<JsonObject> consumer(GETJENKINS_SERVICE_ID).handler(message -> {
            try {
                service.getJenkins(result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getJenkins");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getJenkins", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getJob
        vertx.eventBus().<JsonObject> consumer(GETJOB_SERVICE_ID).handler(message -> {
            try {
                String name = message.body().getString("name");
                service.getJob(name, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getJob");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getJob", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getJobConfig
        vertx.eventBus().<JsonObject> consumer(GETJOBCONFIG_SERVICE_ID).handler(message -> {
            try {
                String name = message.body().getString("name");
                service.getJobConfig(name, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getJobConfig");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getJobConfig", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getJobLastBuild
        vertx.eventBus().<JsonObject> consumer(GETJOBLASTBUILD_SERVICE_ID).handler(message -> {
            try {
                String name = message.body().getString("name");
                service.getJobLastBuild(name, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getJobLastBuild");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getJobLastBuild", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getJobProgressiveText
        vertx.eventBus().<JsonObject> consumer(GETJOBPROGRESSIVETEXT_SERVICE_ID).handler(message -> {
            try {
                String name = message.body().getString("name");
                String number = message.body().getString("number");
                String start = message.body().getString("start");
                service.getJobProgressiveText(name, number, start, result -> {
                    if (result.succeeded())
                        message.reply(null);
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getJobProgressiveText");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getJobProgressiveText", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getQueue
        vertx.eventBus().<JsonObject> consumer(GETQUEUE_SERVICE_ID).handler(message -> {
            try {
                service.getQueue(result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getQueue");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getQueue", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getQueueItem
        vertx.eventBus().<JsonObject> consumer(GETQUEUEITEM_SERVICE_ID).handler(message -> {
            try {
                String number = message.body().getString("number");
                service.getQueueItem(number, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getQueueItem");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getQueueItem", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getView
        vertx.eventBus().<JsonObject> consumer(GETVIEW_SERVICE_ID).handler(message -> {
            try {
                String name = message.body().getString("name");
                service.getView(name, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getView");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getView", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getViewConfig
        vertx.eventBus().<JsonObject> consumer(GETVIEWCONFIG_SERVICE_ID).handler(message -> {
            try {
                String name = message.body().getString("name");
                service.getViewConfig(name, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getViewConfig");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getViewConfig", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for headJenkins
        vertx.eventBus().<JsonObject> consumer(HEADJENKINS_SERVICE_ID).handler(message -> {
            try {
                service.headJenkins(result -> {
                    if (result.succeeded())
                        message.reply(null);
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "headJenkins");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("headJenkins", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for postCreateItem
        vertx.eventBus().<JsonObject> consumer(POSTCREATEITEM_SERVICE_ID).handler(message -> {
            try {
                String name = message.body().getString("name");
                String from = message.body().getString("from");
                String mode = message.body().getString("mode");
                String body = message.body().getString("body");
                String jenkinsCrumb = message.body().getString("Jenkins-Crumb");
                String contentType = message.body().getString("Content-Type");
                service.postCreateItem(name, from, mode, body, jenkinsCrumb, contentType, result -> {
                    if (result.succeeded())
                        message.reply(null);
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "postCreateItem");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("postCreateItem", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for postCreateView
        vertx.eventBus().<JsonObject> consumer(POSTCREATEVIEW_SERVICE_ID).handler(message -> {
            try {
                String name = message.body().getString("name");
                String body = message.body().getString("body");
                String jenkinsCrumb = message.body().getString("Jenkins-Crumb");
                String contentType = message.body().getString("Content-Type");
                service.postCreateView(name, body, jenkinsCrumb, contentType, result -> {
                    if (result.succeeded())
                        message.reply(null);
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "postCreateView");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("postCreateView", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for postJobBuild
        vertx.eventBus().<JsonObject> consumer(POSTJOBBUILD_SERVICE_ID).handler(message -> {
            try {
                String name = message.body().getString("name");
                String json = message.body().getString("json");
                String token = message.body().getString("token");
                String jenkinsCrumb = message.body().getString("Jenkins-Crumb");
                service.postJobBuild(name, json, token, jenkinsCrumb, result -> {
                    if (result.succeeded())
                        message.reply(null);
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "postJobBuild");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("postJobBuild", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for postJobConfig
        vertx.eventBus().<JsonObject> consumer(POSTJOBCONFIG_SERVICE_ID).handler(message -> {
            try {
                String name = message.body().getString("name");
                String body = message.body().getString("body");
                String jenkinsCrumb = message.body().getString("Jenkins-Crumb");
                service.postJobConfig(name, body, jenkinsCrumb, result -> {
                    if (result.succeeded())
                        message.reply(null);
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "postJobConfig");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("postJobConfig", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for postJobDelete
        vertx.eventBus().<JsonObject> consumer(POSTJOBDELETE_SERVICE_ID).handler(message -> {
            try {
                String name = message.body().getString("name");
                String jenkinsCrumb = message.body().getString("Jenkins-Crumb");
                service.postJobDelete(name, jenkinsCrumb, result -> {
                    if (result.succeeded())
                        message.reply(null);
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "postJobDelete");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("postJobDelete", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for postJobDisable
        vertx.eventBus().<JsonObject> consumer(POSTJOBDISABLE_SERVICE_ID).handler(message -> {
            try {
                String name = message.body().getString("name");
                String jenkinsCrumb = message.body().getString("Jenkins-Crumb");
                service.postJobDisable(name, jenkinsCrumb, result -> {
                    if (result.succeeded())
                        message.reply(null);
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "postJobDisable");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("postJobDisable", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for postJobEnable
        vertx.eventBus().<JsonObject> consumer(POSTJOBENABLE_SERVICE_ID).handler(message -> {
            try {
                String name = message.body().getString("name");
                String jenkinsCrumb = message.body().getString("Jenkins-Crumb");
                service.postJobEnable(name, jenkinsCrumb, result -> {
                    if (result.succeeded())
                        message.reply(null);
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "postJobEnable");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("postJobEnable", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for postJobLastBuildStop
        vertx.eventBus().<JsonObject> consumer(POSTJOBLASTBUILDSTOP_SERVICE_ID).handler(message -> {
            try {
                String name = message.body().getString("name");
                String jenkinsCrumb = message.body().getString("Jenkins-Crumb");
                service.postJobLastBuildStop(name, jenkinsCrumb, result -> {
                    if (result.succeeded())
                        message.reply(null);
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "postJobLastBuildStop");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("postJobLastBuildStop", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for postViewConfig
        vertx.eventBus().<JsonObject> consumer(POSTVIEWCONFIG_SERVICE_ID).handler(message -> {
            try {
                String name = message.body().getString("name");
                String body = message.body().getString("body");
                String jenkinsCrumb = message.body().getString("Jenkins-Crumb");
                service.postViewConfig(name, body, jenkinsCrumb, result -> {
                    if (result.succeeded())
                        message.reply(null);
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "postViewConfig");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("postViewConfig", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
    }
    
    private void manageError(Message<JsonObject> message, Throwable cause, String serviceName) {
        int code = MainApiException.INTERNAL_SERVER_ERROR.getStatusCode();
        String statusMessage = MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage();
        if (cause instanceof MainApiException) {
            code = ((MainApiException)cause).getStatusCode();
            statusMessage = ((MainApiException)cause).getStatusMessage();
        } else {
            logUnexpectedError(serviceName, cause); 
        }
            
        message.fail(code, statusMessage);
    }
    
    private void logUnexpectedError(String serviceName, Throwable cause) {
        LOGGER.error("Unexpected error in "+ serviceName, cause);
    }
}
