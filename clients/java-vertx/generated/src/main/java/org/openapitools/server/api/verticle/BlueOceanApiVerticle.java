package org.openapitools.server.api.verticle;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.eventbus.Message;
import io.vertx.core.json.Json;
import io.vertx.core.json.JsonArray;
import io.vertx.core.json.JsonObject;
import io.vertx.core.logging.Logger;
import io.vertx.core.logging.LoggerFactory;

import org.openapitools.server.api.model.Body;
import org.openapitools.server.api.model.BranchImpl;
import org.openapitools.server.api.model.FavoriteImpl;
import org.openapitools.server.api.model.GithubScm;
import org.openapitools.server.api.MainApiException;
import org.openapitools.server.api.model.MultibranchPipeline;
import org.openapitools.server.api.model.Organisation;
import org.openapitools.server.api.model.Organisations;
import org.openapitools.server.api.model.Pipeline;
import org.openapitools.server.api.model.PipelineActivities;
import org.openapitools.server.api.model.PipelineFolderImpl;
import org.openapitools.server.api.model.PipelineImpl;
import org.openapitools.server.api.model.PipelineQueue;
import org.openapitools.server.api.model.PipelineRun;
import org.openapitools.server.api.model.PipelineRunNode;
import org.openapitools.server.api.model.PipelineRunNodeSteps;
import org.openapitools.server.api.model.PipelineRunNodes;
import org.openapitools.server.api.model.PipelineRuns;
import org.openapitools.server.api.model.PipelineStepImpl;
import org.openapitools.server.api.model.Pipelines;
import org.openapitools.server.api.model.QueueItemImpl;
import org.openapitools.server.api.model.ScmOrganisations;
import org.openapitools.server.api.model.User;
import org.openapitools.server.api.model.UserFavorites;

import java.util.List;
import java.util.Map;

public class BlueOceanApiVerticle extends AbstractVerticle {
    final static Logger LOGGER = LoggerFactory.getLogger(BlueOceanApiVerticle.class); 
    
    final static String DELETEPIPELINEQUEUEITEM_SERVICE_ID = "deletePipelineQueueItem";
    final static String GETAUTHENTICATEDUSER_SERVICE_ID = "getAuthenticatedUser";
    final static String GETCLASSES_SERVICE_ID = "getClasses";
    final static String GETJSONWEBKEY_SERVICE_ID = "getJsonWebKey";
    final static String GETJSONWEBTOKEN_SERVICE_ID = "getJsonWebToken";
    final static String GETORGANISATION_SERVICE_ID = "getOrganisation";
    final static String GETORGANISATIONS_SERVICE_ID = "getOrganisations";
    final static String GETPIPELINE_SERVICE_ID = "getPipeline";
    final static String GETPIPELINEACTIVITIES_SERVICE_ID = "getPipelineActivities";
    final static String GETPIPELINEBRANCH_SERVICE_ID = "getPipelineBranch";
    final static String GETPIPELINEBRANCHRUN_SERVICE_ID = "getPipelineBranchRun";
    final static String GETPIPELINEBRANCHES_SERVICE_ID = "getPipelineBranches";
    final static String GETPIPELINEFOLDER_SERVICE_ID = "getPipelineFolder";
    final static String GETPIPELINEFOLDERPIPELINE_SERVICE_ID = "getPipelineFolderPipeline";
    final static String GETPIPELINEQUEUE_SERVICE_ID = "getPipelineQueue";
    final static String GETPIPELINERUN_SERVICE_ID = "getPipelineRun";
    final static String GETPIPELINERUNLOG_SERVICE_ID = "getPipelineRunLog";
    final static String GETPIPELINERUNNODE_SERVICE_ID = "getPipelineRunNode";
    final static String GETPIPELINERUNNODESTEP_SERVICE_ID = "getPipelineRunNodeStep";
    final static String GETPIPELINERUNNODESTEPLOG_SERVICE_ID = "getPipelineRunNodeStepLog";
    final static String GETPIPELINERUNNODESTEPS_SERVICE_ID = "getPipelineRunNodeSteps";
    final static String GETPIPELINERUNNODES_SERVICE_ID = "getPipelineRunNodes";
    final static String GETPIPELINERUNS_SERVICE_ID = "getPipelineRuns";
    final static String GETPIPELINES_SERVICE_ID = "getPipelines";
    final static String GETSCM_SERVICE_ID = "getSCM";
    final static String GETSCMORGANISATIONREPOSITORIES_SERVICE_ID = "getSCMOrganisationRepositories";
    final static String GETSCMORGANISATIONREPOSITORY_SERVICE_ID = "getSCMOrganisationRepository";
    final static String GETSCMORGANISATIONS_SERVICE_ID = "getSCMOrganisations";
    final static String GETUSER_SERVICE_ID = "getUser";
    final static String GETUSERFAVORITES_SERVICE_ID = "getUserFavorites";
    final static String GETUSERS_SERVICE_ID = "getUsers";
    final static String POSTPIPELINERUN_SERVICE_ID = "postPipelineRun";
    final static String POSTPIPELINERUNS_SERVICE_ID = "postPipelineRuns";
    final static String PUTPIPELINEFAVORITE_SERVICE_ID = "putPipelineFavorite";
    final static String PUTPIPELINERUN_SERVICE_ID = "putPipelineRun";
    final static String SEARCH_SERVICE_ID = "search";
    final static String SEARCHCLASSES_SERVICE_ID = "searchClasses";
    
    final BlueOceanApi service;

    public BlueOceanApiVerticle() {
        try {
            Class serviceImplClass = getClass().getClassLoader().loadClass("org.openapitools.server.api.verticle.BlueOceanApiImpl");
            service = (BlueOceanApi)serviceImplClass.newInstance();
        } catch (Exception e) {
            logUnexpectedError("BlueOceanApiVerticle constructor", e);
            throw new RuntimeException(e);
        }
    }

    @Override
    public void start() throws Exception {
        
        //Consumer for deletePipelineQueueItem
        vertx.eventBus().<JsonObject> consumer(DELETEPIPELINEQUEUEITEM_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "deletePipelineQueueItem";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String pipelineParam = message.body().getString("pipeline");
                if(pipelineParam == null) {
                    manageError(message, new MainApiException(400, "pipeline is required"), serviceId);
                    return;
                }
                String pipeline = pipelineParam;
                String queueParam = message.body().getString("queue");
                if(queueParam == null) {
                    manageError(message, new MainApiException(400, "queue is required"), serviceId);
                    return;
                }
                String queue = queueParam;
                service.deletePipelineQueueItem(organization, pipeline, queue, result -> {
                    if (result.succeeded())
                        message.reply(null);
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "deletePipelineQueueItem");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("deletePipelineQueueItem", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getAuthenticatedUser
        vertx.eventBus().<JsonObject> consumer(GETAUTHENTICATEDUSER_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getAuthenticatedUser";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                service.getAuthenticatedUser(organization, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getAuthenticatedUser");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getAuthenticatedUser", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getClasses
        vertx.eventBus().<JsonObject> consumer(GETCLASSES_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getClasses";
                String propertyClassParam = message.body().getString("class");
                if(propertyClassParam == null) {
                    manageError(message, new MainApiException(400, "class is required"), serviceId);
                    return;
                }
                String propertyClass = propertyClassParam;
                service.getClasses(propertyClass, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getClasses");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getClasses", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getJsonWebKey
        vertx.eventBus().<JsonObject> consumer(GETJSONWEBKEY_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getJsonWebKey";
                String keyParam = message.body().getString("key");
                if(keyParam == null) {
                    manageError(message, new MainApiException(400, "key is required"), serviceId);
                    return;
                }
                Integer key = Json.mapper.readValue(keyParam, Integer.class);
                service.getJsonWebKey(key, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getJsonWebKey");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getJsonWebKey", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getJsonWebToken
        vertx.eventBus().<JsonObject> consumer(GETJSONWEBTOKEN_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getJsonWebToken";
                String expiryTimeInMinsParam = message.body().getString("expiryTimeInMins");
                Integer expiryTimeInMins = (expiryTimeInMinsParam == null) ? null : Json.mapper.readValue(expiryTimeInMinsParam, Integer.class);
                String maxExpiryTimeInMinsParam = message.body().getString("maxExpiryTimeInMins");
                Integer maxExpiryTimeInMins = (maxExpiryTimeInMinsParam == null) ? null : Json.mapper.readValue(maxExpiryTimeInMinsParam, Integer.class);
                service.getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getJsonWebToken");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getJsonWebToken", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getOrganisation
        vertx.eventBus().<JsonObject> consumer(GETORGANISATION_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getOrganisation";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                service.getOrganisation(organization, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getOrganisation");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getOrganisation", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getOrganisations
        vertx.eventBus().<JsonObject> consumer(GETORGANISATIONS_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getOrganisations";
                service.getOrganisations(result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getOrganisations");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getOrganisations", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getPipeline
        vertx.eventBus().<JsonObject> consumer(GETPIPELINE_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getPipeline";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String pipelineParam = message.body().getString("pipeline");
                if(pipelineParam == null) {
                    manageError(message, new MainApiException(400, "pipeline is required"), serviceId);
                    return;
                }
                String pipeline = pipelineParam;
                service.getPipeline(organization, pipeline, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getPipeline");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getPipeline", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getPipelineActivities
        vertx.eventBus().<JsonObject> consumer(GETPIPELINEACTIVITIES_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getPipelineActivities";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String pipelineParam = message.body().getString("pipeline");
                if(pipelineParam == null) {
                    manageError(message, new MainApiException(400, "pipeline is required"), serviceId);
                    return;
                }
                String pipeline = pipelineParam;
                service.getPipelineActivities(organization, pipeline, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getPipelineActivities");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getPipelineActivities", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getPipelineBranch
        vertx.eventBus().<JsonObject> consumer(GETPIPELINEBRANCH_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getPipelineBranch";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String pipelineParam = message.body().getString("pipeline");
                if(pipelineParam == null) {
                    manageError(message, new MainApiException(400, "pipeline is required"), serviceId);
                    return;
                }
                String pipeline = pipelineParam;
                String branchParam = message.body().getString("branch");
                if(branchParam == null) {
                    manageError(message, new MainApiException(400, "branch is required"), serviceId);
                    return;
                }
                String branch = branchParam;
                service.getPipelineBranch(organization, pipeline, branch, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getPipelineBranch");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getPipelineBranch", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getPipelineBranchRun
        vertx.eventBus().<JsonObject> consumer(GETPIPELINEBRANCHRUN_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getPipelineBranchRun";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String pipelineParam = message.body().getString("pipeline");
                if(pipelineParam == null) {
                    manageError(message, new MainApiException(400, "pipeline is required"), serviceId);
                    return;
                }
                String pipeline = pipelineParam;
                String branchParam = message.body().getString("branch");
                if(branchParam == null) {
                    manageError(message, new MainApiException(400, "branch is required"), serviceId);
                    return;
                }
                String branch = branchParam;
                String runParam = message.body().getString("run");
                if(runParam == null) {
                    manageError(message, new MainApiException(400, "run is required"), serviceId);
                    return;
                }
                String run = runParam;
                service.getPipelineBranchRun(organization, pipeline, branch, run, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getPipelineBranchRun");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getPipelineBranchRun", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getPipelineBranches
        vertx.eventBus().<JsonObject> consumer(GETPIPELINEBRANCHES_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getPipelineBranches";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String pipelineParam = message.body().getString("pipeline");
                if(pipelineParam == null) {
                    manageError(message, new MainApiException(400, "pipeline is required"), serviceId);
                    return;
                }
                String pipeline = pipelineParam;
                service.getPipelineBranches(organization, pipeline, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getPipelineBranches");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getPipelineBranches", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getPipelineFolder
        vertx.eventBus().<JsonObject> consumer(GETPIPELINEFOLDER_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getPipelineFolder";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String folderParam = message.body().getString("folder");
                if(folderParam == null) {
                    manageError(message, new MainApiException(400, "folder is required"), serviceId);
                    return;
                }
                String folder = folderParam;
                service.getPipelineFolder(organization, folder, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getPipelineFolder");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getPipelineFolder", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getPipelineFolderPipeline
        vertx.eventBus().<JsonObject> consumer(GETPIPELINEFOLDERPIPELINE_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getPipelineFolderPipeline";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String pipelineParam = message.body().getString("pipeline");
                if(pipelineParam == null) {
                    manageError(message, new MainApiException(400, "pipeline is required"), serviceId);
                    return;
                }
                String pipeline = pipelineParam;
                String folderParam = message.body().getString("folder");
                if(folderParam == null) {
                    manageError(message, new MainApiException(400, "folder is required"), serviceId);
                    return;
                }
                String folder = folderParam;
                service.getPipelineFolderPipeline(organization, pipeline, folder, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getPipelineFolderPipeline");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getPipelineFolderPipeline", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getPipelineQueue
        vertx.eventBus().<JsonObject> consumer(GETPIPELINEQUEUE_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getPipelineQueue";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String pipelineParam = message.body().getString("pipeline");
                if(pipelineParam == null) {
                    manageError(message, new MainApiException(400, "pipeline is required"), serviceId);
                    return;
                }
                String pipeline = pipelineParam;
                service.getPipelineQueue(organization, pipeline, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getPipelineQueue");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getPipelineQueue", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getPipelineRun
        vertx.eventBus().<JsonObject> consumer(GETPIPELINERUN_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getPipelineRun";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String pipelineParam = message.body().getString("pipeline");
                if(pipelineParam == null) {
                    manageError(message, new MainApiException(400, "pipeline is required"), serviceId);
                    return;
                }
                String pipeline = pipelineParam;
                String runParam = message.body().getString("run");
                if(runParam == null) {
                    manageError(message, new MainApiException(400, "run is required"), serviceId);
                    return;
                }
                String run = runParam;
                service.getPipelineRun(organization, pipeline, run, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getPipelineRun");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getPipelineRun", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getPipelineRunLog
        vertx.eventBus().<JsonObject> consumer(GETPIPELINERUNLOG_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getPipelineRunLog";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String pipelineParam = message.body().getString("pipeline");
                if(pipelineParam == null) {
                    manageError(message, new MainApiException(400, "pipeline is required"), serviceId);
                    return;
                }
                String pipeline = pipelineParam;
                String runParam = message.body().getString("run");
                if(runParam == null) {
                    manageError(message, new MainApiException(400, "run is required"), serviceId);
                    return;
                }
                String run = runParam;
                String startParam = message.body().getString("start");
                Integer start = (startParam == null) ? null : Json.mapper.readValue(startParam, Integer.class);
                String downloadParam = message.body().getString("download");
                Boolean download = (downloadParam == null) ? null : Json.mapper.readValue(downloadParam, Boolean.class);
                service.getPipelineRunLog(organization, pipeline, run, start, download, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getPipelineRunLog");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getPipelineRunLog", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getPipelineRunNode
        vertx.eventBus().<JsonObject> consumer(GETPIPELINERUNNODE_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getPipelineRunNode";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String pipelineParam = message.body().getString("pipeline");
                if(pipelineParam == null) {
                    manageError(message, new MainApiException(400, "pipeline is required"), serviceId);
                    return;
                }
                String pipeline = pipelineParam;
                String runParam = message.body().getString("run");
                if(runParam == null) {
                    manageError(message, new MainApiException(400, "run is required"), serviceId);
                    return;
                }
                String run = runParam;
                String nodeParam = message.body().getString("node");
                if(nodeParam == null) {
                    manageError(message, new MainApiException(400, "node is required"), serviceId);
                    return;
                }
                String node = nodeParam;
                service.getPipelineRunNode(organization, pipeline, run, node, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getPipelineRunNode");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getPipelineRunNode", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getPipelineRunNodeStep
        vertx.eventBus().<JsonObject> consumer(GETPIPELINERUNNODESTEP_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getPipelineRunNodeStep";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String pipelineParam = message.body().getString("pipeline");
                if(pipelineParam == null) {
                    manageError(message, new MainApiException(400, "pipeline is required"), serviceId);
                    return;
                }
                String pipeline = pipelineParam;
                String runParam = message.body().getString("run");
                if(runParam == null) {
                    manageError(message, new MainApiException(400, "run is required"), serviceId);
                    return;
                }
                String run = runParam;
                String nodeParam = message.body().getString("node");
                if(nodeParam == null) {
                    manageError(message, new MainApiException(400, "node is required"), serviceId);
                    return;
                }
                String node = nodeParam;
                String stepParam = message.body().getString("step");
                if(stepParam == null) {
                    manageError(message, new MainApiException(400, "step is required"), serviceId);
                    return;
                }
                String step = stepParam;
                service.getPipelineRunNodeStep(organization, pipeline, run, node, step, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getPipelineRunNodeStep");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getPipelineRunNodeStep", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getPipelineRunNodeStepLog
        vertx.eventBus().<JsonObject> consumer(GETPIPELINERUNNODESTEPLOG_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getPipelineRunNodeStepLog";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String pipelineParam = message.body().getString("pipeline");
                if(pipelineParam == null) {
                    manageError(message, new MainApiException(400, "pipeline is required"), serviceId);
                    return;
                }
                String pipeline = pipelineParam;
                String runParam = message.body().getString("run");
                if(runParam == null) {
                    manageError(message, new MainApiException(400, "run is required"), serviceId);
                    return;
                }
                String run = runParam;
                String nodeParam = message.body().getString("node");
                if(nodeParam == null) {
                    manageError(message, new MainApiException(400, "node is required"), serviceId);
                    return;
                }
                String node = nodeParam;
                String stepParam = message.body().getString("step");
                if(stepParam == null) {
                    manageError(message, new MainApiException(400, "step is required"), serviceId);
                    return;
                }
                String step = stepParam;
                service.getPipelineRunNodeStepLog(organization, pipeline, run, node, step, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getPipelineRunNodeStepLog");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getPipelineRunNodeStepLog", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getPipelineRunNodeSteps
        vertx.eventBus().<JsonObject> consumer(GETPIPELINERUNNODESTEPS_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getPipelineRunNodeSteps";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String pipelineParam = message.body().getString("pipeline");
                if(pipelineParam == null) {
                    manageError(message, new MainApiException(400, "pipeline is required"), serviceId);
                    return;
                }
                String pipeline = pipelineParam;
                String runParam = message.body().getString("run");
                if(runParam == null) {
                    manageError(message, new MainApiException(400, "run is required"), serviceId);
                    return;
                }
                String run = runParam;
                String nodeParam = message.body().getString("node");
                if(nodeParam == null) {
                    manageError(message, new MainApiException(400, "node is required"), serviceId);
                    return;
                }
                String node = nodeParam;
                service.getPipelineRunNodeSteps(organization, pipeline, run, node, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getPipelineRunNodeSteps");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getPipelineRunNodeSteps", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getPipelineRunNodes
        vertx.eventBus().<JsonObject> consumer(GETPIPELINERUNNODES_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getPipelineRunNodes";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String pipelineParam = message.body().getString("pipeline");
                if(pipelineParam == null) {
                    manageError(message, new MainApiException(400, "pipeline is required"), serviceId);
                    return;
                }
                String pipeline = pipelineParam;
                String runParam = message.body().getString("run");
                if(runParam == null) {
                    manageError(message, new MainApiException(400, "run is required"), serviceId);
                    return;
                }
                String run = runParam;
                service.getPipelineRunNodes(organization, pipeline, run, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getPipelineRunNodes");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getPipelineRunNodes", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getPipelineRuns
        vertx.eventBus().<JsonObject> consumer(GETPIPELINERUNS_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getPipelineRuns";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String pipelineParam = message.body().getString("pipeline");
                if(pipelineParam == null) {
                    manageError(message, new MainApiException(400, "pipeline is required"), serviceId);
                    return;
                }
                String pipeline = pipelineParam;
                service.getPipelineRuns(organization, pipeline, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getPipelineRuns");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getPipelineRuns", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getPipelines
        vertx.eventBus().<JsonObject> consumer(GETPIPELINES_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getPipelines";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                service.getPipelines(organization, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getPipelines");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getPipelines", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getSCM
        vertx.eventBus().<JsonObject> consumer(GETSCM_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getSCM";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String scmParam = message.body().getString("scm");
                if(scmParam == null) {
                    manageError(message, new MainApiException(400, "scm is required"), serviceId);
                    return;
                }
                String scm = scmParam;
                service.getSCM(organization, scm, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getSCM");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getSCM", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getSCMOrganisationRepositories
        vertx.eventBus().<JsonObject> consumer(GETSCMORGANISATIONREPOSITORIES_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getSCMOrganisationRepositories";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String scmParam = message.body().getString("scm");
                if(scmParam == null) {
                    manageError(message, new MainApiException(400, "scm is required"), serviceId);
                    return;
                }
                String scm = scmParam;
                String scmOrganisationParam = message.body().getString("scmOrganisation");
                if(scmOrganisationParam == null) {
                    manageError(message, new MainApiException(400, "scmOrganisation is required"), serviceId);
                    return;
                }
                String scmOrganisation = scmOrganisationParam;
                String credentialIdParam = message.body().getString("credentialId");
                String credentialId = (credentialIdParam == null) ? null : credentialIdParam;
                String pageSizeParam = message.body().getString("pageSize");
                Integer pageSize = (pageSizeParam == null) ? null : Json.mapper.readValue(pageSizeParam, Integer.class);
                String pageNumberParam = message.body().getString("pageNumber");
                Integer pageNumber = (pageNumberParam == null) ? null : Json.mapper.readValue(pageNumberParam, Integer.class);
                service.getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getSCMOrganisationRepositories");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getSCMOrganisationRepositories", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getSCMOrganisationRepository
        vertx.eventBus().<JsonObject> consumer(GETSCMORGANISATIONREPOSITORY_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getSCMOrganisationRepository";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String scmParam = message.body().getString("scm");
                if(scmParam == null) {
                    manageError(message, new MainApiException(400, "scm is required"), serviceId);
                    return;
                }
                String scm = scmParam;
                String scmOrganisationParam = message.body().getString("scmOrganisation");
                if(scmOrganisationParam == null) {
                    manageError(message, new MainApiException(400, "scmOrganisation is required"), serviceId);
                    return;
                }
                String scmOrganisation = scmOrganisationParam;
                String repositoryParam = message.body().getString("repository");
                if(repositoryParam == null) {
                    manageError(message, new MainApiException(400, "repository is required"), serviceId);
                    return;
                }
                String repository = repositoryParam;
                String credentialIdParam = message.body().getString("credentialId");
                String credentialId = (credentialIdParam == null) ? null : credentialIdParam;
                service.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getSCMOrganisationRepository");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getSCMOrganisationRepository", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getSCMOrganisations
        vertx.eventBus().<JsonObject> consumer(GETSCMORGANISATIONS_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getSCMOrganisations";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String scmParam = message.body().getString("scm");
                if(scmParam == null) {
                    manageError(message, new MainApiException(400, "scm is required"), serviceId);
                    return;
                }
                String scm = scmParam;
                String credentialIdParam = message.body().getString("credentialId");
                String credentialId = (credentialIdParam == null) ? null : credentialIdParam;
                service.getSCMOrganisations(organization, scm, credentialId, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getSCMOrganisations");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getSCMOrganisations", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getUser
        vertx.eventBus().<JsonObject> consumer(GETUSER_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getUser";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String userParam = message.body().getString("user");
                if(userParam == null) {
                    manageError(message, new MainApiException(400, "user is required"), serviceId);
                    return;
                }
                String user = userParam;
                service.getUser(organization, user, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getUser");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getUser", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getUserFavorites
        vertx.eventBus().<JsonObject> consumer(GETUSERFAVORITES_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getUserFavorites";
                String userParam = message.body().getString("user");
                if(userParam == null) {
                    manageError(message, new MainApiException(400, "user is required"), serviceId);
                    return;
                }
                String user = userParam;
                service.getUserFavorites(user, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getUserFavorites");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getUserFavorites", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for getUsers
        vertx.eventBus().<JsonObject> consumer(GETUSERS_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "getUsers";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                service.getUsers(organization, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "getUsers");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("getUsers", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for postPipelineRun
        vertx.eventBus().<JsonObject> consumer(POSTPIPELINERUN_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "postPipelineRun";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String pipelineParam = message.body().getString("pipeline");
                if(pipelineParam == null) {
                    manageError(message, new MainApiException(400, "pipeline is required"), serviceId);
                    return;
                }
                String pipeline = pipelineParam;
                String runParam = message.body().getString("run");
                if(runParam == null) {
                    manageError(message, new MainApiException(400, "run is required"), serviceId);
                    return;
                }
                String run = runParam;
                service.postPipelineRun(organization, pipeline, run, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "postPipelineRun");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("postPipelineRun", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for postPipelineRuns
        vertx.eventBus().<JsonObject> consumer(POSTPIPELINERUNS_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "postPipelineRuns";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String pipelineParam = message.body().getString("pipeline");
                if(pipelineParam == null) {
                    manageError(message, new MainApiException(400, "pipeline is required"), serviceId);
                    return;
                }
                String pipeline = pipelineParam;
                service.postPipelineRuns(organization, pipeline, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "postPipelineRuns");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("postPipelineRuns", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for putPipelineFavorite
        vertx.eventBus().<JsonObject> consumer(PUTPIPELINEFAVORITE_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "putPipelineFavorite";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String pipelineParam = message.body().getString("pipeline");
                if(pipelineParam == null) {
                    manageError(message, new MainApiException(400, "pipeline is required"), serviceId);
                    return;
                }
                String pipeline = pipelineParam;
                JsonObject bodyParam = message.body().getJsonObject("Body");
                if (bodyParam == null) {
                    manageError(message, new MainApiException(400, "Body is required"), serviceId);
                    return;
                }
                Body body = Json.mapper.readValue(bodyParam.encode(), Body.class);
                service.putPipelineFavorite(organization, pipeline, body, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "putPipelineFavorite");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("putPipelineFavorite", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for putPipelineRun
        vertx.eventBus().<JsonObject> consumer(PUTPIPELINERUN_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "putPipelineRun";
                String organizationParam = message.body().getString("organization");
                if(organizationParam == null) {
                    manageError(message, new MainApiException(400, "organization is required"), serviceId);
                    return;
                }
                String organization = organizationParam;
                String pipelineParam = message.body().getString("pipeline");
                if(pipelineParam == null) {
                    manageError(message, new MainApiException(400, "pipeline is required"), serviceId);
                    return;
                }
                String pipeline = pipelineParam;
                String runParam = message.body().getString("run");
                if(runParam == null) {
                    manageError(message, new MainApiException(400, "run is required"), serviceId);
                    return;
                }
                String run = runParam;
                String blockingParam = message.body().getString("blocking");
                String blocking = (blockingParam == null) ? null : blockingParam;
                String timeOutInSecsParam = message.body().getString("timeOutInSecs");
                Integer timeOutInSecs = (timeOutInSecsParam == null) ? null : Json.mapper.readValue(timeOutInSecsParam, Integer.class);
                service.putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "putPipelineRun");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("putPipelineRun", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for search
        vertx.eventBus().<JsonObject> consumer(SEARCH_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "search";
                String qParam = message.body().getString("q");
                if(qParam == null) {
                    manageError(message, new MainApiException(400, "q is required"), serviceId);
                    return;
                }
                String q = qParam;
                service.search(q, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "search");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("search", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for searchClasses
        vertx.eventBus().<JsonObject> consumer(SEARCHCLASSES_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "searchClasses";
                String qParam = message.body().getString("q");
                if(qParam == null) {
                    manageError(message, new MainApiException(400, "q is required"), serviceId);
                    return;
                }
                String q = qParam;
                service.searchClasses(q, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "searchClasses");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("searchClasses", e);
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
