package io.swagger.server.api.verticle;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.eventbus.Message;
import io.vertx.core.json.Json;
import io.vertx.core.json.JsonArray;
import io.vertx.core.json.JsonObject;
import io.vertx.core.logging.Logger;
import io.vertx.core.logging.LoggerFactory;

import io.swagger.server.api.model.BranchImpl;
import io.swagger.server.api.model.FavoriteImpl;
import io.swagger.server.api.model.GithubScm;
import io.swagger.server.api.MainApiException;
import io.swagger.server.api.model.MultibranchPipeline;
import io.swagger.server.api.model.Organisation;
import io.swagger.server.api.model.Organisations;
import io.swagger.server.api.model.Pipeline;
import io.swagger.server.api.model.PipelineActivities;
import io.swagger.server.api.model.PipelineFolderImpl;
import io.swagger.server.api.model.PipelineImpl;
import io.swagger.server.api.model.PipelineQueue;
import io.swagger.server.api.model.PipelineRun;
import io.swagger.server.api.model.PipelineRunNode;
import io.swagger.server.api.model.PipelineRunNodeSteps;
import io.swagger.server.api.model.PipelineRunNodes;
import io.swagger.server.api.model.PipelineRuns;
import io.swagger.server.api.model.PipelineStepImpl;
import io.swagger.server.api.model.Pipelines;
import io.swagger.server.api.model.QueueItemImpl;
import io.swagger.server.api.model.ScmOrganisations;
import io.swagger.server.api.model.User;
import io.swagger.server.api.model.UserFavorites;

import java.util.List;
import java.util.Map;

public class BlueOceanApiVerticle extends AbstractVerticle {
    final static Logger LOGGER = LoggerFactory.getLogger(BlueOceanApiVerticle.class); 
    
    final static String DELETEPIPELINEQUEUEITEM_SERVICE_ID = "deletePipelineQueueItem";
    final static String GETAUTHENTICATEDUSER_SERVICE_ID = "getAuthenticatedUser";
    final static String GETCLASSES_SERVICE_ID = "getClasses";
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
    
    //TODO : create Implementation
    BlueOceanApi service = new BlueOceanApiImpl();

    @Override
    public void start() throws Exception {
        
        //Consumer for deletePipelineQueueItem
        vertx.eventBus().<JsonObject> consumer(DELETEPIPELINEQUEUEITEM_SERVICE_ID).handler(message -> {
            try {
                String organization = message.body().getString("organization");
                String pipeline = message.body().getString("pipeline");
                String queue = message.body().getString("queue");
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
                String organization = message.body().getString("organization");
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
                String propertyClass = message.body().getString("class");
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
        
        //Consumer for getOrganisation
        vertx.eventBus().<JsonObject> consumer(GETORGANISATION_SERVICE_ID).handler(message -> {
            try {
                String organization = message.body().getString("organization");
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
                String organization = message.body().getString("organization");
                String pipeline = message.body().getString("pipeline");
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
                String organization = message.body().getString("organization");
                String pipeline = message.body().getString("pipeline");
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
                String organization = message.body().getString("organization");
                String pipeline = message.body().getString("pipeline");
                String branch = message.body().getString("branch");
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
                String organization = message.body().getString("organization");
                String pipeline = message.body().getString("pipeline");
                String branch = message.body().getString("branch");
                String run = message.body().getString("run");
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
                String organization = message.body().getString("organization");
                String pipeline = message.body().getString("pipeline");
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
                String organization = message.body().getString("organization");
                String folder = message.body().getString("folder");
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
                String organization = message.body().getString("organization");
                String pipeline = message.body().getString("pipeline");
                String folder = message.body().getString("folder");
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
                String organization = message.body().getString("organization");
                String pipeline = message.body().getString("pipeline");
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
                String organization = message.body().getString("organization");
                String pipeline = message.body().getString("pipeline");
                String run = message.body().getString("run");
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
                String organization = message.body().getString("organization");
                String pipeline = message.body().getString("pipeline");
                String run = message.body().getString("run");
                Integer start = Json.mapper.readValue(message.body().getString("start"), Integer.class);
                Boolean download = Json.mapper.readValue(message.body().getString("download"), Boolean.class);
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
                String organization = message.body().getString("organization");
                String pipeline = message.body().getString("pipeline");
                String run = message.body().getString("run");
                String node = message.body().getString("node");
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
                String organization = message.body().getString("organization");
                String pipeline = message.body().getString("pipeline");
                String run = message.body().getString("run");
                String node = message.body().getString("node");
                String step = message.body().getString("step");
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
                String organization = message.body().getString("organization");
                String pipeline = message.body().getString("pipeline");
                String run = message.body().getString("run");
                String node = message.body().getString("node");
                String step = message.body().getString("step");
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
                String organization = message.body().getString("organization");
                String pipeline = message.body().getString("pipeline");
                String run = message.body().getString("run");
                String node = message.body().getString("node");
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
                String organization = message.body().getString("organization");
                String pipeline = message.body().getString("pipeline");
                String run = message.body().getString("run");
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
                String organization = message.body().getString("organization");
                String pipeline = message.body().getString("pipeline");
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
                String organization = message.body().getString("organization");
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
                String organization = message.body().getString("organization");
                String scm = message.body().getString("scm");
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
                String organization = message.body().getString("organization");
                String scm = message.body().getString("scm");
                String scmOrganisation = message.body().getString("scmOrganisation");
                String credentialId = message.body().getString("credentialId");
                Integer pageSize = Json.mapper.readValue(message.body().getString("pageSize"), Integer.class);
                Integer pageNumber = Json.mapper.readValue(message.body().getString("pageNumber"), Integer.class);
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
                String organization = message.body().getString("organization");
                String scm = message.body().getString("scm");
                String scmOrganisation = message.body().getString("scmOrganisation");
                String repository = message.body().getString("repository");
                String credentialId = message.body().getString("credentialId");
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
                String organization = message.body().getString("organization");
                String scm = message.body().getString("scm");
                String credentialId = message.body().getString("credentialId");
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
                String organization = message.body().getString("organization");
                String user = message.body().getString("user");
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
                String user = message.body().getString("user");
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
                String organization = message.body().getString("organization");
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
                String organization = message.body().getString("organization");
                String pipeline = message.body().getString("pipeline");
                String run = message.body().getString("run");
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
                String organization = message.body().getString("organization");
                String pipeline = message.body().getString("pipeline");
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
                String organization = message.body().getString("organization");
                String pipeline = message.body().getString("pipeline");
                String body = Json.mapper.readValue(message.body().getJsonObject("body").encode(), String.class);
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
                String organization = message.body().getString("organization");
                String pipeline = message.body().getString("pipeline");
                String run = message.body().getString("run");
                String blocking = message.body().getString("blocking");
                Integer timeOutInSecs = Json.mapper.readValue(message.body().getString("timeOutInSecs"), Integer.class);
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
                String q = message.body().getString("q");
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
                String q = message.body().getString("q");
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
