package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;

import org.wso2.msf4j.formparam.FormDataParam;
import org.wso2.msf4j.formparam.FileInfo;

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
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2019-04-10T13:31:17.047Z[GMT]")
public abstract class BlueApiService {
    public abstract Response deletePipelineQueueItem(String organization
 ,String pipeline
 ,String queue
 ) throws NotFoundException;
    public abstract Response getAuthenticatedUser(String organization
 ) throws NotFoundException;
    public abstract Response getClasses(String propertyClass
 ) throws NotFoundException;
    public abstract Response getOrganisation(String organization
 ) throws NotFoundException;
    public abstract Response getOrganisations() throws NotFoundException;
    public abstract Response getPipeline(String organization
 ,String pipeline
 ) throws NotFoundException;
    public abstract Response getPipelineActivities(String organization
 ,String pipeline
 ) throws NotFoundException;
    public abstract Response getPipelineBranch(String organization
 ,String pipeline
 ,String branch
 ) throws NotFoundException;
    public abstract Response getPipelineBranchRun(String organization
 ,String pipeline
 ,String branch
 ,String run
 ) throws NotFoundException;
    public abstract Response getPipelineBranches(String organization
 ,String pipeline
 ) throws NotFoundException;
    public abstract Response getPipelineFolder(String organization
 ,String folder
 ) throws NotFoundException;
    public abstract Response getPipelineFolderPipeline(String organization
 ,String pipeline
 ,String folder
 ) throws NotFoundException;
    public abstract Response getPipelineQueue(String organization
 ,String pipeline
 ) throws NotFoundException;
    public abstract Response getPipelineRun(String organization
 ,String pipeline
 ,String run
 ) throws NotFoundException;
    public abstract Response getPipelineRunLog(String organization
 ,String pipeline
 ,String run
 ,Integer start
 ,Boolean download
 ) throws NotFoundException;
    public abstract Response getPipelineRunNode(String organization
 ,String pipeline
 ,String run
 ,String node
 ) throws NotFoundException;
    public abstract Response getPipelineRunNodeStep(String organization
 ,String pipeline
 ,String run
 ,String node
 ,String step
 ) throws NotFoundException;
    public abstract Response getPipelineRunNodeStepLog(String organization
 ,String pipeline
 ,String run
 ,String node
 ,String step
 ) throws NotFoundException;
    public abstract Response getPipelineRunNodeSteps(String organization
 ,String pipeline
 ,String run
 ,String node
 ) throws NotFoundException;
    public abstract Response getPipelineRunNodes(String organization
 ,String pipeline
 ,String run
 ) throws NotFoundException;
    public abstract Response getPipelineRuns(String organization
 ,String pipeline
 ) throws NotFoundException;
    public abstract Response getPipelines(String organization
 ) throws NotFoundException;
    public abstract Response getSCM(String organization
 ,String scm
 ) throws NotFoundException;
    public abstract Response getSCMOrganisationRepositories(String organization
 ,String scm
 ,String scmOrganisation
 ,String credentialId
 ,Integer pageSize
 ,Integer pageNumber
 ) throws NotFoundException;
    public abstract Response getSCMOrganisationRepository(String organization
 ,String scm
 ,String scmOrganisation
 ,String repository
 ,String credentialId
 ) throws NotFoundException;
    public abstract Response getSCMOrganisations(String organization
 ,String scm
 ,String credentialId
 ) throws NotFoundException;
    public abstract Response getUser(String organization
 ,String user
 ) throws NotFoundException;
    public abstract Response getUserFavorites(String user
 ) throws NotFoundException;
    public abstract Response getUsers(String organization
 ) throws NotFoundException;
    public abstract Response postPipelineRun(String organization
 ,String pipeline
 ,String run
 ) throws NotFoundException;
    public abstract Response postPipelineRuns(String organization
 ,String pipeline
 ) throws NotFoundException;
    public abstract Response putPipelineFavorite(String organization
 ,String pipeline
 ,Body body
 ) throws NotFoundException;
    public abstract Response putPipelineRun(String organization
 ,String pipeline
 ,String run
 ,String blocking
 ,Integer timeOutInSecs
 ) throws NotFoundException;
    public abstract Response search(String q
 ) throws NotFoundException;
    public abstract Response searchClasses(String q
 ) throws NotFoundException;
}
