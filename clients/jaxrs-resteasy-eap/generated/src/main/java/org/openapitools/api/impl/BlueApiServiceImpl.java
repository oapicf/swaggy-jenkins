package org.openapitools.api.impl;

import org.openapitools.api.*;
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
import org.openapitools.model.User;

import java.util.List;

import java.io.InputStream;

import javax.validation.constraints.*;
import javax.validation.Valid;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2024-03-15T14:15:29.514273296Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class BlueApiServiceImpl implements BlueApi {
      public Response deletePipelineQueueItem(String organization,String pipeline,String queue,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getAuthenticatedUser(String organization,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getClasses(String propertyClass,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getOrganisation(String organization,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getOrganisations(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getPipeline(String organization,String pipeline,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getPipelineActivities(String organization,String pipeline,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getPipelineBranch(String organization,String pipeline,String branch,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getPipelineBranchRun(String organization,String pipeline,String branch,String run,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getPipelineBranches(String organization,String pipeline,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getPipelineFolder(String organization,String folder,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getPipelineFolderPipeline(String organization,String pipeline,String folder,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getPipelineQueue(String organization,String pipeline,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getPipelineRun(String organization,String pipeline,String run,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getPipelineRunLog(String organization,String pipeline,String run,Integer start,Boolean download,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getPipelineRunNode(String organization,String pipeline,String run,String node,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getPipelineRunNodeStep(String organization,String pipeline,String run,String node,String step,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getPipelineRunNodeStepLog(String organization,String pipeline,String run,String node,String step,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getPipelineRunNodeSteps(String organization,String pipeline,String run,String node,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getPipelineRunNodes(String organization,String pipeline,String run,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getPipelineRuns(String organization,String pipeline,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getPipelines(String organization,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getSCM(String organization,String scm,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getSCMOrganisationRepositories(String organization,String scm,String scmOrganisation,String credentialId,Integer pageSize,Integer pageNumber,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getSCMOrganisationRepository(String organization,String scm,String scmOrganisation,String repository,String credentialId,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getSCMOrganisations(String organization,String scm,String credentialId,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getUser(String organization,String user,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getUserFavorites(String user,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getUsers(String organization,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postPipelineRun(String organization,String pipeline,String run,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postPipelineRuns(String organization,String pipeline,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response putPipelineFavorite(String organization,String pipeline,Boolean body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response putPipelineRun(String organization,String pipeline,String run,String blocking,Integer timeOutInSecs,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response search(String q,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response searchClasses(String q,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
}
