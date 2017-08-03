package io.swagger.api.impl;

import io.swagger.api.*;
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

import java.util.List;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaResteasyEapServerCodegen", date = "2017-08-03T23:34:59.445Z")
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
      public Response putPipelineFavorite(String organization,String pipeline,String body,SecurityContext securityContext) {
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
