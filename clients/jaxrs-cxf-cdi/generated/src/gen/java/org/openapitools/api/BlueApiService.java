package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;

import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;

import org.openapitools.model.Body;
import org.openapitools.model.BranchImpl;
import org.openapitools.model.FavoriteImpl;
import org.openapitools.model.GithubScm;
import org.openapitools.model.MultibranchPipeline;
import org.openapitools.model.Organisation;
import org.openapitools.model.Organisations;
import org.openapitools.model.Pipeline;
import org.openapitools.model.PipelineActivities;
import org.openapitools.model.PipelineFolderImpl;
import org.openapitools.model.PipelineImpl;
import org.openapitools.model.PipelineQueue;
import org.openapitools.model.PipelineRun;
import org.openapitools.model.PipelineRunNode;
import org.openapitools.model.PipelineRunNodeSteps;
import org.openapitools.model.PipelineRunNodes;
import org.openapitools.model.PipelineRuns;
import org.openapitools.model.PipelineStepImpl;
import org.openapitools.model.Pipelines;
import org.openapitools.model.QueueItemImpl;
import org.openapitools.model.ScmOrganisations;
import org.openapitools.model.User;
import org.openapitools.model.UserFavorites;

import java.util.List;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2018-08-21T02:12:22.737Z[GMT]")
public interface BlueApiService {
      public Response deletePipelineQueueItem(String organization, String pipeline, String queue, SecurityContext securityContext);
      public Response getAuthenticatedUser(String organization, SecurityContext securityContext);
      public Response getClasses(String propertyClass, SecurityContext securityContext);
      public Response getOrganisation(String organization, SecurityContext securityContext);
      public Response getOrganisations(SecurityContext securityContext);
      public Response getPipeline(String organization, String pipeline, SecurityContext securityContext);
      public Response getPipelineActivities(String organization, String pipeline, SecurityContext securityContext);
      public Response getPipelineBranch(String organization, String pipeline, String branch, SecurityContext securityContext);
      public Response getPipelineBranchRun(String organization, String pipeline, String branch, String run, SecurityContext securityContext);
      public Response getPipelineBranches(String organization, String pipeline, SecurityContext securityContext);
      public Response getPipelineFolder(String organization, String folder, SecurityContext securityContext);
      public Response getPipelineFolderPipeline(String organization, String pipeline, String folder, SecurityContext securityContext);
      public Response getPipelineQueue(String organization, String pipeline, SecurityContext securityContext);
      public Response getPipelineRun(String organization, String pipeline, String run, SecurityContext securityContext);
      public Response getPipelineRunLog(String organization, String pipeline, String run, Integer start, Boolean download, SecurityContext securityContext);
      public Response getPipelineRunNode(String organization, String pipeline, String run, String node, SecurityContext securityContext);
      public Response getPipelineRunNodeStep(String organization, String pipeline, String run, String node, String step, SecurityContext securityContext);
      public Response getPipelineRunNodeStepLog(String organization, String pipeline, String run, String node, String step, SecurityContext securityContext);
      public Response getPipelineRunNodeSteps(String organization, String pipeline, String run, String node, SecurityContext securityContext);
      public Response getPipelineRunNodes(String organization, String pipeline, String run, SecurityContext securityContext);
      public Response getPipelineRuns(String organization, String pipeline, SecurityContext securityContext);
      public Response getPipelines(String organization, SecurityContext securityContext);
      public Response getSCM(String organization, String scm, SecurityContext securityContext);
      public Response getSCMOrganisationRepositories(String organization, String scm, String scmOrganisation, String credentialId, Integer pageSize, Integer pageNumber, SecurityContext securityContext);
      public Response getSCMOrganisationRepository(String organization, String scm, String scmOrganisation, String repository, String credentialId, SecurityContext securityContext);
      public Response getSCMOrganisations(String organization, String scm, String credentialId, SecurityContext securityContext);
      public Response getUser(String organization, String user, SecurityContext securityContext);
      public Response getUserFavorites(String user, SecurityContext securityContext);
      public Response getUsers(String organization, SecurityContext securityContext);
      public Response postPipelineRun(String organization, String pipeline, String run, SecurityContext securityContext);
      public Response postPipelineRuns(String organization, String pipeline, SecurityContext securityContext);
      public Response putPipelineFavorite(String organization, String pipeline, Body body, SecurityContext securityContext);
      public Response putPipelineRun(String organization, String pipeline, String run, String blocking, Integer timeOutInSecs, SecurityContext securityContext);
      public Response search(String q, SecurityContext securityContext);
      public Response searchClasses(String q, SecurityContext securityContext);
}
