package org.openapitools.controllers;

import io.swagger.inflector.models.RequestContext;
import io.swagger.inflector.models.ResponseContext;
import javax.ws.rs.core.Response.Status;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import java.io.File;
import java.util.List;

import org.openapitools.model.*;

import org.openapitools.model.BranchImpl;
import org.openapitools.model.FavoriteImpl;
import org.openapitools.model.GithubOrganization;
import org.openapitools.model.GithubScm;
import org.openapitools.model.MultibranchPipeline;
import org.openapitools.model.Organisation;
import org.openapitools.model.Pipeline;
import org.openapitools.model.PipelineActivity;
import org.openapitools.model.PipelineFolderImpl;
import org.openapitools.model.PipelineImpl;
import org.openapitools.model.PipelineRun;
import org.openapitools.model.PipelineRunNode;
import org.openapitools.model.PipelineStepImpl;
import org.openapitools.model.QueueItemImpl;
import org.openapitools.model.UNKNOWN_BASE_TYPE;
import org.openapitools.model.User;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2022-02-02T10:44:21.668219Z[Etc/UTC]")
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
    public ResponseContext putPipelineFavorite(RequestContext request , String organization, String pipeline, UNKNOWN_BASE_TYPE UNKNOWN_BASE_TYPE) {
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
