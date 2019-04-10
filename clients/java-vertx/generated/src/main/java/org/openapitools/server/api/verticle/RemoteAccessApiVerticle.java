package org.openapitools.server.api.verticle;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.eventbus.Message;
import io.vertx.core.json.Json;
import io.vertx.core.json.JsonArray;
import io.vertx.core.json.JsonObject;
import io.vertx.core.logging.Logger;
import io.vertx.core.logging.LoggerFactory;

import org.openapitools.server.api.model.ComputerSet;
import org.openapitools.server.api.model.FreeStyleBuild;
import org.openapitools.server.api.model.FreeStyleProject;
import org.openapitools.server.api.model.Hudson;
import org.openapitools.server.api.model.ListView;
import org.openapitools.server.api.MainApiException;
import org.openapitools.server.api.model.Queue;

import java.util.List;
import java.util.Map;

public class RemoteAccessApiVerticle extends AbstractVerticle {
    final static Logger LOGGER = LoggerFactory.getLogger(RemoteAccessApiVerticle.class); 
    
    final static String GETCOMPUTER_SERVICE_ID = "getComputer";
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
    
    final RemoteAccessApi service;

    public RemoteAccessApiVerticle() {
        try {
            Class serviceImplClass = getClass().getClassLoader().loadClass("org.openapitools.server.api.verticle.RemoteAccessApiImpl");
            service = (RemoteAccessApi)serviceImplClass.newInstance();
        } catch (Exception e) {
            logUnexpectedError("RemoteAccessApiVerticle constructor", e);
            throw new RuntimeException(e);
        }
    }

    @Override
    public void start() throws Exception {
        
        //Consumer for getComputer
        vertx.eventBus().<JsonObject> consumer(GETCOMPUTER_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getComputer";
                String depthParam = message.body().getString("depth");
                if(depthParam == null) {
                    manageError(message, new MainApiException(400, "depth is required"), serviceId);
                    return;
                }
                Integer depth = Json.mapper.readValue(depthParam, Integer.class);
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
        
        //Consumer for getJenkins
        vertx.eventBus().<JsonObject> consumer(GETJENKINS_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getJenkins";
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
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getJob";
                String nameParam = message.body().getString("name");
                if(nameParam == null) {
                    manageError(message, new MainApiException(400, "name is required"), serviceId);
                    return;
                }
                String name = nameParam;
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
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getJobConfig";
                String nameParam = message.body().getString("name");
                if(nameParam == null) {
                    manageError(message, new MainApiException(400, "name is required"), serviceId);
                    return;
                }
                String name = nameParam;
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
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getJobLastBuild";
                String nameParam = message.body().getString("name");
                if(nameParam == null) {
                    manageError(message, new MainApiException(400, "name is required"), serviceId);
                    return;
                }
                String name = nameParam;
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
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getJobProgressiveText";
                String nameParam = message.body().getString("name");
                if(nameParam == null) {
                    manageError(message, new MainApiException(400, "name is required"), serviceId);
                    return;
                }
                String name = nameParam;
                String numberParam = message.body().getString("number");
                if(numberParam == null) {
                    manageError(message, new MainApiException(400, "number is required"), serviceId);
                    return;
                }
                String number = numberParam;
                String startParam = message.body().getString("start");
                if(startParam == null) {
                    manageError(message, new MainApiException(400, "start is required"), serviceId);
                    return;
                }
                String start = startParam;
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
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getQueue";
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
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getQueueItem";
                String numberParam = message.body().getString("number");
                if(numberParam == null) {
                    manageError(message, new MainApiException(400, "number is required"), serviceId);
                    return;
                }
                String number = numberParam;
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
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getView";
                String nameParam = message.body().getString("name");
                if(nameParam == null) {
                    manageError(message, new MainApiException(400, "name is required"), serviceId);
                    return;
                }
                String name = nameParam;
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
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getViewConfig";
                String nameParam = message.body().getString("name");
                if(nameParam == null) {
                    manageError(message, new MainApiException(400, "name is required"), serviceId);
                    return;
                }
                String name = nameParam;
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
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "headJenkins";
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
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "postCreateItem";
                String nameParam = message.body().getString("name");
                if(nameParam == null) {
                    manageError(message, new MainApiException(400, "name is required"), serviceId);
                    return;
                }
                String name = nameParam;
                String fromParam = message.body().getString("from");
                String from = (fromParam == null) ? null : fromParam;
                String modeParam = message.body().getString("mode");
                String mode = (modeParam == null) ? null : modeParam;
                String jenkinsCrumbParam = message.body().getString("Jenkins-Crumb");
                String jenkinsCrumb = (jenkinsCrumbParam == null) ? null : jenkinsCrumbParam;
                String contentTypeParam = message.body().getString("Content-Type");
                String contentType = (contentTypeParam == null) ? null : contentTypeParam;
                String bodyParam = message.body().getString("body");
                String body = (bodyParam == null) ? null : bodyParam;
                service.postCreateItem(name, from, mode, jenkinsCrumb, contentType, body, result -> {
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
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "postCreateView";
                String nameParam = message.body().getString("name");
                if(nameParam == null) {
                    manageError(message, new MainApiException(400, "name is required"), serviceId);
                    return;
                }
                String name = nameParam;
                String jenkinsCrumbParam = message.body().getString("Jenkins-Crumb");
                String jenkinsCrumb = (jenkinsCrumbParam == null) ? null : jenkinsCrumbParam;
                String contentTypeParam = message.body().getString("Content-Type");
                String contentType = (contentTypeParam == null) ? null : contentTypeParam;
                String bodyParam = message.body().getString("body");
                String body = (bodyParam == null) ? null : bodyParam;
                service.postCreateView(name, jenkinsCrumb, contentType, body, result -> {
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
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "postJobBuild";
                String nameParam = message.body().getString("name");
                if(nameParam == null) {
                    manageError(message, new MainApiException(400, "name is required"), serviceId);
                    return;
                }
                String name = nameParam;
                String jsonParam = message.body().getString("json");
                if(jsonParam == null) {
                    manageError(message, new MainApiException(400, "json is required"), serviceId);
                    return;
                }
                String json = jsonParam;
                String tokenParam = message.body().getString("token");
                String token = (tokenParam == null) ? null : tokenParam;
                String jenkinsCrumbParam = message.body().getString("Jenkins-Crumb");
                String jenkinsCrumb = (jenkinsCrumbParam == null) ? null : jenkinsCrumbParam;
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
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "postJobConfig";
                String nameParam = message.body().getString("name");
                if(nameParam == null) {
                    manageError(message, new MainApiException(400, "name is required"), serviceId);
                    return;
                }
                String name = nameParam;
                String bodyParam = message.body().getString("body");
                if(bodyParam == null) {
                    manageError(message, new MainApiException(400, "body is required"), serviceId);
                    return;
                }
                String body = bodyParam;
                String jenkinsCrumbParam = message.body().getString("Jenkins-Crumb");
                String jenkinsCrumb = (jenkinsCrumbParam == null) ? null : jenkinsCrumbParam;
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
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "postJobDelete";
                String nameParam = message.body().getString("name");
                if(nameParam == null) {
                    manageError(message, new MainApiException(400, "name is required"), serviceId);
                    return;
                }
                String name = nameParam;
                String jenkinsCrumbParam = message.body().getString("Jenkins-Crumb");
                String jenkinsCrumb = (jenkinsCrumbParam == null) ? null : jenkinsCrumbParam;
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
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "postJobDisable";
                String nameParam = message.body().getString("name");
                if(nameParam == null) {
                    manageError(message, new MainApiException(400, "name is required"), serviceId);
                    return;
                }
                String name = nameParam;
                String jenkinsCrumbParam = message.body().getString("Jenkins-Crumb");
                String jenkinsCrumb = (jenkinsCrumbParam == null) ? null : jenkinsCrumbParam;
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
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "postJobEnable";
                String nameParam = message.body().getString("name");
                if(nameParam == null) {
                    manageError(message, new MainApiException(400, "name is required"), serviceId);
                    return;
                }
                String name = nameParam;
                String jenkinsCrumbParam = message.body().getString("Jenkins-Crumb");
                String jenkinsCrumb = (jenkinsCrumbParam == null) ? null : jenkinsCrumbParam;
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
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "postJobLastBuildStop";
                String nameParam = message.body().getString("name");
                if(nameParam == null) {
                    manageError(message, new MainApiException(400, "name is required"), serviceId);
                    return;
                }
                String name = nameParam;
                String jenkinsCrumbParam = message.body().getString("Jenkins-Crumb");
                String jenkinsCrumb = (jenkinsCrumbParam == null) ? null : jenkinsCrumbParam;
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
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "postViewConfig";
                String nameParam = message.body().getString("name");
                if(nameParam == null) {
                    manageError(message, new MainApiException(400, "name is required"), serviceId);
                    return;
                }
                String name = nameParam;
                String bodyParam = message.body().getString("body");
                if(bodyParam == null) {
                    manageError(message, new MainApiException(400, "body is required"), serviceId);
                    return;
                }
                String body = bodyParam;
                String jenkinsCrumbParam = message.body().getString("Jenkins-Crumb");
                String jenkinsCrumb = (jenkinsCrumbParam == null) ? null : jenkinsCrumbParam;
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
