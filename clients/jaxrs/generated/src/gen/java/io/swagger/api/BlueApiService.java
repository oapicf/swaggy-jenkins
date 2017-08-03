package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;

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
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJerseyServerCodegen", date = "2017-08-03T23:34:37.174Z")
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
    public abstract Response getPipelineRunLog(String organization,String pipeline,String run, Integer start, Boolean download,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineRunNode(String organization,String pipeline,String run,String node,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineRunNodeStep(String organization,String pipeline,String run,String node,String step,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineRunNodeStepLog(String organization,String pipeline,String run,String node,String step,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineRunNodeSteps(String organization,String pipeline,String run,String node,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineRunNodes(String organization,String pipeline,String run,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineRuns(String organization,String pipeline,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelines(String organization,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getSCM(String organization,String scm,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getSCMOrganisationRepositories(String organization,String scm,String scmOrganisation, String credentialId, Integer pageSize, Integer pageNumber,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getSCMOrganisationRepository(String organization,String scm,String scmOrganisation,String repository, String credentialId,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getSCMOrganisations(String organization,String scm, String credentialId,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getUser(String organization,String user,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getUserFavorites(String user,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getUsers(String organization,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postPipelineRun(String organization,String pipeline,String run,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postPipelineRuns(String organization,String pipeline,SecurityContext securityContext) throws NotFoundException;
    public abstract Response putPipelineFavorite(String organization,String pipeline,String body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response putPipelineRun(String organization,String pipeline,String run, String blocking, Integer timeOutInSecs,SecurityContext securityContext) throws NotFoundException;
    public abstract Response search( @NotNull String q,SecurityContext securityContext) throws NotFoundException;
    public abstract Response searchClasses( @NotNull String q,SecurityContext securityContext) throws NotFoundException;
}
