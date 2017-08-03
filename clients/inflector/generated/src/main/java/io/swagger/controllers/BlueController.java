package io.swagger.controllers;

import io.swagger.inflector.models.RequestContext;
import io.swagger.inflector.models.ResponseContext;
import javax.ws.rs.core.Response.Status;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import java.io.File;
import java.util.List;

import io.swagger.model.*;

import io.swagger.model.BranchImpl;
import io.swagger.model.FavoriteImpl;
import io.swagger.model.GithubScm;
import io.swagger.model.MultibranchPipeline;
import io.swagger.model.Organisation;
import io.swagger.model.Organisations;
import io.swagger.model.Pipeline;
import io.swagger.model.PipelineActivities;
import io.swagger.model.PipelineFolderImpl;
import io.swagger.model.PipelineImpl;
import io.swagger.model.PipelineQueue;
import io.swagger.model.PipelineRun;
import io.swagger.model.PipelineRunNode;
import io.swagger.model.PipelineRunNodeSteps;
import io.swagger.model.PipelineRunNodes;
import io.swagger.model.PipelineRuns;
import io.swagger.model.PipelineStepImpl;
import io.swagger.model.Pipelines;
import io.swagger.model.QueueItemImpl;
import io.swagger.model.ScmOrganisations;
import io.swagger.model.User;
import io.swagger.model.UserFavorites;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaInflectorServerCodegen", date = "2017-08-03T23:31:09.957Z")
public class BlueController  {
  /** 
   * Uncomment and implement as you see fit.  These operations will map
   * Directly to operation calls from the routing logic.  Because the inflector
   * Code allows you to implement logic incrementally, they are disabled.
   **/

  /*
    public ResponseContext deletePipelineQueueItem(RequestContext request , String organization, String pipeline, String queue) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getAuthenticatedUser(RequestContext request , String organization) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getClasses(RequestContext request , String propertyClass) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getOrganisation(RequestContext request , String organization) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getOrganisations(RequestContext request ) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getPipeline(RequestContext request , String organization, String pipeline) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getPipelineActivities(RequestContext request , String organization, String pipeline) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getPipelineBranch(RequestContext request , String organization, String pipeline, String branch) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getPipelineBranchRun(RequestContext request , String organization, String pipeline, String branch, String run) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getPipelineBranches(RequestContext request , String organization, String pipeline) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getPipelineFolder(RequestContext request , String organization, String folder) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getPipelineFolderPipeline(RequestContext request , String organization, String pipeline, String folder) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getPipelineQueue(RequestContext request , String organization, String pipeline) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getPipelineRun(RequestContext request , String organization, String pipeline, String run) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getPipelineRunLog(RequestContext request , String organization, String pipeline, String run, Integer start, Boolean download) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getPipelineRunNode(RequestContext request , String organization, String pipeline, String run, String node) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getPipelineRunNodeStep(RequestContext request , String organization, String pipeline, String run, String node, String step) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getPipelineRunNodeStepLog(RequestContext request , String organization, String pipeline, String run, String node, String step) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getPipelineRunNodeSteps(RequestContext request , String organization, String pipeline, String run, String node) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getPipelineRunNodes(RequestContext request , String organization, String pipeline, String run) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getPipelineRuns(RequestContext request , String organization, String pipeline) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getPipelines(RequestContext request , String organization) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getSCM(RequestContext request , String organization, String scm) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getSCMOrganisationRepositories(RequestContext request , String organization, String scm, String scmOrganisation, String credentialId, Integer pageSize, Integer pageNumber) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getSCMOrganisationRepository(RequestContext request , String organization, String scm, String scmOrganisation, String repository, String credentialId) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getSCMOrganisations(RequestContext request , String organization, String scm, String credentialId) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getUser(RequestContext request , String organization, String user) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getUserFavorites(RequestContext request , String user) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext getUsers(RequestContext request , String organization) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext postPipelineRun(RequestContext request , String organization, String pipeline, String run) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext postPipelineRuns(RequestContext request , String organization, String pipeline) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext putPipelineFavorite(RequestContext request , String organization, String pipeline, String body) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext putPipelineRun(RequestContext request , String organization, String pipeline, String run, String blocking, Integer timeOutInSecs) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext search(RequestContext request , String q) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext searchClasses(RequestContext request , String q) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

}

