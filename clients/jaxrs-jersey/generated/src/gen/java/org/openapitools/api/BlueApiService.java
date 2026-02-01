package org.openapitools.api;

import org.openapitools.api.*;

import org.glassfish.jersey.media.multipart.FormDataBodyPart;

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
import javax.validation.constraints.*;
import javax.validation.Valid;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2026-02-01T01:24:27.776611850Z[Etc/UTC]", comments = "Generator version: 7.18.0")
public abstract class BlueApiService {
    public abstract Response deletePipelineQueueItem(String organization,String pipeline,String queue,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getAuthenticatedUser(String organization,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getClasses(String propertyClass,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getOrganisation(String organization,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getOrganisations(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipeline(String organization,String pipeline,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineActivities(String organization,String pipeline,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineBranch(String organization,String pipeline,String branch,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineBranchRun(String organization,String pipeline,String branch,String run,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineBranches(String organization,String pipeline,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineFolder(String organization,String folder,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineFolderPipeline(String organization,String pipeline,String folder,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineQueue(String organization,String pipeline,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineRun(String organization,String pipeline,String run,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineRunLog(String organization,String pipeline,String run,Integer start,Boolean download,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineRunNode(String organization,String pipeline,String run,String node,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineRunNodeStep(String organization,String pipeline,String run,String node,String step,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineRunNodeStepLog(String organization,String pipeline,String run,String node,String step,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineRunNodeSteps(String organization,String pipeline,String run,String node,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineRunNodes(String organization,String pipeline,String run,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineRuns(String organization,String pipeline,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelines(String organization,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getSCM(String organization,String scm,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getSCMOrganisationRepositories(String organization,String scm,String scmOrganisation,String credentialId,Integer pageSize,Integer pageNumber,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getSCMOrganisationRepository(String organization,String scm,String scmOrganisation,String repository,String credentialId,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getSCMOrganisations(String organization,String scm,String credentialId,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getUser(String organization,String user,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getUserFavorites(String user,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getUsers(String organization,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postPipelineRun(String organization,String pipeline,String run,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postPipelineRuns(String organization,String pipeline,SecurityContext securityContext) throws NotFoundException;
    public abstract Response putPipelineFavorite(String organization,String pipeline,Boolean body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response putPipelineRun(String organization,String pipeline,String run,String blocking,Integer timeOutInSecs,SecurityContext securityContext) throws NotFoundException;
    public abstract Response search( @NotNull String q,SecurityContext securityContext) throws NotFoundException;
    public abstract Response searchClasses( @NotNull String q,SecurityContext securityContext) throws NotFoundException;
}
