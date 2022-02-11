package org.openapitools.api;

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
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2022-02-11T12:43:32.526248Z[Etc/UTC]")
public interface BlueApiService {
      Response deletePipelineQueueItem(String organization,String pipeline,String queue,SecurityContext securityContext)
      throws NotFoundException;
      Response getAuthenticatedUser(String organization,SecurityContext securityContext)
      throws NotFoundException;
      Response getClasses(String propertyClass,SecurityContext securityContext)
      throws NotFoundException;
      Response getOrganisation(String organization,SecurityContext securityContext)
      throws NotFoundException;
      Response getOrganisations(SecurityContext securityContext)
      throws NotFoundException;
      Response getPipeline(String organization,String pipeline,SecurityContext securityContext)
      throws NotFoundException;
      Response getPipelineActivities(String organization,String pipeline,SecurityContext securityContext)
      throws NotFoundException;
      Response getPipelineBranch(String organization,String pipeline,String branch,SecurityContext securityContext)
      throws NotFoundException;
      Response getPipelineBranchRun(String organization,String pipeline,String branch,String run,SecurityContext securityContext)
      throws NotFoundException;
      Response getPipelineBranches(String organization,String pipeline,SecurityContext securityContext)
      throws NotFoundException;
      Response getPipelineFolder(String organization,String folder,SecurityContext securityContext)
      throws NotFoundException;
      Response getPipelineFolderPipeline(String organization,String pipeline,String folder,SecurityContext securityContext)
      throws NotFoundException;
      Response getPipelineQueue(String organization,String pipeline,SecurityContext securityContext)
      throws NotFoundException;
      Response getPipelineRun(String organization,String pipeline,String run,SecurityContext securityContext)
      throws NotFoundException;
      Response getPipelineRunLog(String organization,String pipeline,String run,Integer start,Boolean download,SecurityContext securityContext)
      throws NotFoundException;
      Response getPipelineRunNode(String organization,String pipeline,String run,String node,SecurityContext securityContext)
      throws NotFoundException;
      Response getPipelineRunNodeStep(String organization,String pipeline,String run,String node,String step,SecurityContext securityContext)
      throws NotFoundException;
      Response getPipelineRunNodeStepLog(String organization,String pipeline,String run,String node,String step,SecurityContext securityContext)
      throws NotFoundException;
      Response getPipelineRunNodeSteps(String organization,String pipeline,String run,String node,SecurityContext securityContext)
      throws NotFoundException;
      Response getPipelineRunNodes(String organization,String pipeline,String run,SecurityContext securityContext)
      throws NotFoundException;
      Response getPipelineRuns(String organization,String pipeline,SecurityContext securityContext)
      throws NotFoundException;
      Response getPipelines(String organization,SecurityContext securityContext)
      throws NotFoundException;
      Response getSCM(String organization,String scm,SecurityContext securityContext)
      throws NotFoundException;
      Response getSCMOrganisationRepositories(String organization,String scm,String scmOrganisation,String credentialId,Integer pageSize,Integer pageNumber,SecurityContext securityContext)
      throws NotFoundException;
      Response getSCMOrganisationRepository(String organization,String scm,String scmOrganisation,String repository,String credentialId,SecurityContext securityContext)
      throws NotFoundException;
      Response getSCMOrganisations(String organization,String scm,String credentialId,SecurityContext securityContext)
      throws NotFoundException;
      Response getUser(String organization,String user,SecurityContext securityContext)
      throws NotFoundException;
      Response getUserFavorites(String user,SecurityContext securityContext)
      throws NotFoundException;
      Response getUsers(String organization,SecurityContext securityContext)
      throws NotFoundException;
      Response postPipelineRun(String organization,String pipeline,String run,SecurityContext securityContext)
      throws NotFoundException;
      Response postPipelineRuns(String organization,String pipeline,SecurityContext securityContext)
      throws NotFoundException;
      Response putPipelineFavorite(String organization,String pipeline,Boolean body,SecurityContext securityContext)
      throws NotFoundException;
      Response putPipelineRun(String organization,String pipeline,String run,String blocking,Integer timeOutInSecs,SecurityContext securityContext)
      throws NotFoundException;
      Response search(String q,SecurityContext securityContext)
      throws NotFoundException;
      Response searchClasses(String q,SecurityContext securityContext)
      throws NotFoundException;
}
