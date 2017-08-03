package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;

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

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2017-08-03T23:34:47.267Z")
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
      public Response putPipelineFavorite(String organization, String pipeline, String body, SecurityContext securityContext);
      public Response putPipelineRun(String organization, String pipeline, String run, String blocking, Integer timeOutInSecs, SecurityContext securityContext);
      public Response search(String q, SecurityContext securityContext);
      public Response searchClasses(String q, SecurityContext securityContext);
}
