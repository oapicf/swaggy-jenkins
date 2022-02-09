package org.openapitools.api;

import org.openapitools.model.*;
import org.openapitools.api.BlueApiService;
import org.openapitools.api.factories.BlueApiServiceFactory;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;

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

import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import org.wso2.msf4j.formparam.FormDataParam;
import org.wso2.msf4j.formparam.FileInfo;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;

@Path("/blue/rest")


@io.swagger.annotations.Api(description = "the blue API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2022-02-09T13:04:29.818508Z[Etc/UTC]")
public class BlueApi  {
   private final BlueApiService delegate = BlueApiServiceFactory.getBlueApi();

    @DELETE
    @Path("/organizations/{organization}/pipelines/{pipeline}/queue/{queue}")
    
    
    @io.swagger.annotations.ApiOperation(value = "", notes = "Delete queue item from an organization pipeline queue", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully deleted queue item", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response deletePipelineQueueItem(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the queue item",required=true) @PathParam("queue") String queue
)
    throws NotFoundException {
        return delegate.deletePipelineQueueItem(organization,pipeline,queue);
    }
    @GET
    @Path("/organizations/{organization}/user/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve authenticated user details for an organization", response = User.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved authenticated user details", response = User.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = User.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = User.class) })
    public Response getAuthenticatedUser(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
)
    throws NotFoundException {
        return delegate.getAuthenticatedUser(organization);
    }
    @GET
    @Path("/classes/{class}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Get a list of class names supported by a given class", response = String.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved class names", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class) })
    public Response getClasses(@ApiParam(value = "Name of the class",required=true) @PathParam("class") String propertyClass
)
    throws NotFoundException {
        return delegate.getClasses(propertyClass);
    }
    @GET
    @Path("/organizations/{organization}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve organization details", response = Organisation.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = Organisation.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Organisation.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Organisation.class),
        
        @io.swagger.annotations.ApiResponse(code = 404, message = "Pipeline cannot be found on Jenkins instance", response = Organisation.class) })
    public Response getOrganisation(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
)
    throws NotFoundException {
        return delegate.getOrganisation(organization);
    }
    @GET
    @Path("/organizations/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve all organizations details", response = Organisation.class, responseContainer = "List", authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved pipelines details", response = Organisation.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Organisation.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Organisation.class, responseContainer = "List") })
    public Response getOrganisations()
    throws NotFoundException {
        return delegate.getOrganisations();
    }
    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve pipeline details for an organization", response = Pipeline.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = Pipeline.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Pipeline.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Pipeline.class),
        
        @io.swagger.annotations.ApiResponse(code = 404, message = "Pipeline cannot be found on Jenkins instance", response = Pipeline.class) })
    public Response getPipeline(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
)
    throws NotFoundException {
        return delegate.getPipeline(organization,pipeline);
    }
    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/activities")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve all activities details for an organization pipeline", response = PipelineActivity.class, responseContainer = "List", authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved all activities details", response = PipelineActivity.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineActivity.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineActivity.class, responseContainer = "List") })
    public Response getPipelineActivities(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
)
    throws NotFoundException {
        return delegate.getPipelineActivities(organization,pipeline);
    }
    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve branch details for an organization pipeline", response = BranchImpl.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved branch details", response = BranchImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = BranchImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = BranchImpl.class) })
    public Response getPipelineBranch(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the branch",required=true) @PathParam("branch") String branch
)
    throws NotFoundException {
        return delegate.getPipelineBranch(organization,pipeline,branch);
    }
    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve branch run details for an organization pipeline", response = PipelineRun.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved run details", response = PipelineRun.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineRun.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineRun.class) })
    public Response getPipelineBranchRun(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the branch",required=true) @PathParam("branch") String branch
,@ApiParam(value = "Name of the run",required=true) @PathParam("run") String run
)
    throws NotFoundException {
        return delegate.getPipelineBranchRun(organization,pipeline,branch,run);
    }
    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/branches")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve all branches details for an organization pipeline", response = MultibranchPipeline.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved all branches details", response = MultibranchPipeline.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = MultibranchPipeline.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = MultibranchPipeline.class) })
    public Response getPipelineBranches(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
)
    throws NotFoundException {
        return delegate.getPipelineBranches(organization,pipeline);
    }
    @GET
    @Path("/organizations/{organization}/pipelines/{folder}/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve pipeline folder for an organization", response = PipelineFolderImpl.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved folder details", response = PipelineFolderImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineFolderImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineFolderImpl.class) })
    public Response getPipelineFolder(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the folder",required=true) @PathParam("folder") String folder
)
    throws NotFoundException {
        return delegate.getPipelineFolder(organization,folder);
    }
    @GET
    @Path("/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve pipeline details for an organization folder", response = PipelineImpl.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = PipelineImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineImpl.class) })
    public Response getPipelineFolderPipeline(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the folder",required=true) @PathParam("folder") String folder
)
    throws NotFoundException {
        return delegate.getPipelineFolderPipeline(organization,pipeline,folder);
    }
    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/queue")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve queue details for an organization pipeline", response = QueueItemImpl.class, responseContainer = "List", authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved queue details", response = QueueItemImpl.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = QueueItemImpl.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = QueueItemImpl.class, responseContainer = "List") })
    public Response getPipelineQueue(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
)
    throws NotFoundException {
        return delegate.getPipelineQueue(organization,pipeline);
    }
    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs/{run}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve run details for an organization pipeline", response = PipelineRun.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved run details", response = PipelineRun.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineRun.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineRun.class) })
    public Response getPipelineRun(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the run",required=true) @PathParam("run") String run
)
    throws NotFoundException {
        return delegate.getPipelineRun(organization,pipeline,run);
    }
    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Get log for a pipeline run", response = String.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved pipeline run log", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class) })
    public Response getPipelineRunLog(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the run",required=true) @PathParam("run") String run
,@ApiParam(value = "Start position of the log") @QueryParam("start") Integer start
,@ApiParam(value = "Set to true in order to download the file, otherwise it's passed as a response body") @QueryParam("download") Boolean download
)
    throws NotFoundException {
        return delegate.getPipelineRunLog(organization,pipeline,run,start,download);
    }
    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve run node details for an organization pipeline", response = PipelineRunNode.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved run node details", response = PipelineRunNode.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineRunNode.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineRunNode.class) })
    public Response getPipelineRunNode(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the run",required=true) @PathParam("run") String run
,@ApiParam(value = "Name of the node",required=true) @PathParam("node") String node
)
    throws NotFoundException {
        return delegate.getPipelineRunNode(organization,pipeline,run,node);
    }
    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve run node details for an organization pipeline", response = PipelineStepImpl.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved run node step details", response = PipelineStepImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineStepImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineStepImpl.class) })
    public Response getPipelineRunNodeStep(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the run",required=true) @PathParam("run") String run
,@ApiParam(value = "Name of the node",required=true) @PathParam("node") String node
,@ApiParam(value = "Name of the step",required=true) @PathParam("step") String step
)
    throws NotFoundException {
        return delegate.getPipelineRunNodeStep(organization,pipeline,run,node,step);
    }
    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Get log for a pipeline run node step", response = String.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved pipeline run node step log", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class) })
    public Response getPipelineRunNodeStepLog(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the run",required=true) @PathParam("run") String run
,@ApiParam(value = "Name of the node",required=true) @PathParam("node") String node
,@ApiParam(value = "Name of the step",required=true) @PathParam("step") String step
)
    throws NotFoundException {
        return delegate.getPipelineRunNodeStepLog(organization,pipeline,run,node,step);
    }
    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve run node steps details for an organization pipeline", response = PipelineStepImpl.class, responseContainer = "List", authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved run node steps details", response = PipelineStepImpl.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineStepImpl.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineStepImpl.class, responseContainer = "List") })
    public Response getPipelineRunNodeSteps(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the run",required=true) @PathParam("run") String run
,@ApiParam(value = "Name of the node",required=true) @PathParam("node") String node
)
    throws NotFoundException {
        return delegate.getPipelineRunNodeSteps(organization,pipeline,run,node);
    }
    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve run nodes details for an organization pipeline", response = PipelineRunNode.class, responseContainer = "List", authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved run nodes details", response = PipelineRunNode.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineRunNode.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineRunNode.class, responseContainer = "List") })
    public Response getPipelineRunNodes(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the run",required=true) @PathParam("run") String run
)
    throws NotFoundException {
        return delegate.getPipelineRunNodes(organization,pipeline,run);
    }
    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve all runs details for an organization pipeline", response = PipelineRun.class, responseContainer = "List", authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved runs details", response = PipelineRun.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineRun.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineRun.class, responseContainer = "List") })
    public Response getPipelineRuns(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
)
    throws NotFoundException {
        return delegate.getPipelineRuns(organization,pipeline);
    }
    @GET
    @Path("/organizations/{organization}/pipelines/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve all pipelines details for an organization", response = Pipeline.class, responseContainer = "List", authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved pipelines details", response = Pipeline.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Pipeline.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Pipeline.class, responseContainer = "List") })
    public Response getPipelines(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
)
    throws NotFoundException {
        return delegate.getPipelines(organization);
    }
    @GET
    @Path("/organizations/{organization}/scm/{scm}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve SCM details for an organization", response = GithubScm.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved SCM details", response = GithubScm.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = GithubScm.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = GithubScm.class) })
    public Response getSCM(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of SCM",required=true) @PathParam("scm") String scm
)
    throws NotFoundException {
        return delegate.getSCM(organization,scm);
    }
    @GET
    @Path("/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve SCM organization repositories details for an organization", response = GithubOrganization.class, responseContainer = "List", authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved SCM organization repositories details", response = GithubOrganization.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = GithubOrganization.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = GithubOrganization.class, responseContainer = "List") })
    public Response getSCMOrganisationRepositories(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of SCM",required=true) @PathParam("scm") String scm
,@ApiParam(value = "Name of the SCM organization",required=true) @PathParam("scmOrganisation") String scmOrganisation
,@ApiParam(value = "Credential ID") @QueryParam("credentialId") String credentialId
,@ApiParam(value = "Number of items in a page") @QueryParam("pageSize") Integer pageSize
,@ApiParam(value = "Page number") @QueryParam("pageNumber") Integer pageNumber
)
    throws NotFoundException {
        return delegate.getSCMOrganisationRepositories(organization,scm,scmOrganisation,credentialId,pageSize,pageNumber);
    }
    @GET
    @Path("/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve SCM organization repository details for an organization", response = GithubOrganization.class, responseContainer = "List", authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved SCM organizations details", response = GithubOrganization.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = GithubOrganization.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = GithubOrganization.class, responseContainer = "List") })
    public Response getSCMOrganisationRepository(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of SCM",required=true) @PathParam("scm") String scm
,@ApiParam(value = "Name of the SCM organization",required=true) @PathParam("scmOrganisation") String scmOrganisation
,@ApiParam(value = "Name of the SCM repository",required=true) @PathParam("repository") String repository
,@ApiParam(value = "Credential ID") @QueryParam("credentialId") String credentialId
)
    throws NotFoundException {
        return delegate.getSCMOrganisationRepository(organization,scm,scmOrganisation,repository,credentialId);
    }
    @GET
    @Path("/organizations/{organization}/scm/{scm}/organizations")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve SCM organizations details for an organization", response = GithubOrganization.class, responseContainer = "List", authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved SCM organizations details", response = GithubOrganization.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = GithubOrganization.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = GithubOrganization.class, responseContainer = "List") })
    public Response getSCMOrganisations(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of SCM",required=true) @PathParam("scm") String scm
,@ApiParam(value = "Credential ID") @QueryParam("credentialId") String credentialId
)
    throws NotFoundException {
        return delegate.getSCMOrganisations(organization,scm,credentialId);
    }
    @GET
    @Path("/organizations/{organization}/users/{user}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve user details for an organization", response = User.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved users details", response = User.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = User.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = User.class) })
    public Response getUser(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the user",required=true) @PathParam("user") String user
)
    throws NotFoundException {
        return delegate.getUser(organization,user);
    }
    @GET
    @Path("/users/{user}/favorites")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve user favorites details for an organization", response = FavoriteImpl.class, responseContainer = "List", authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved users favorites details", response = FavoriteImpl.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = FavoriteImpl.class, responseContainer = "List"),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = FavoriteImpl.class, responseContainer = "List") })
    public Response getUserFavorites(@ApiParam(value = "Name of the user",required=true) @PathParam("user") String user
)
    throws NotFoundException {
        return delegate.getUserFavorites(user);
    }
    @GET
    @Path("/organizations/{organization}/users/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve users details for an organization", response = User.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved users details", response = User.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = User.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = User.class) })
    public Response getUsers(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
)
    throws NotFoundException {
        return delegate.getUsers(organization);
    }
    @POST
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Replay an organization pipeline run", response = QueueItemImpl.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully replayed a pipeline run", response = QueueItemImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = QueueItemImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = QueueItemImpl.class) })
    public Response postPipelineRun(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the run",required=true) @PathParam("run") String run
)
    throws NotFoundException {
        return delegate.postPipelineRun(organization,pipeline,run);
    }
    @POST
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Start a build for an organization pipeline", response = QueueItemImpl.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully started a build", response = QueueItemImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = QueueItemImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = QueueItemImpl.class) })
    public Response postPipelineRuns(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
)
    throws NotFoundException {
        return delegate.postPipelineRuns(organization,pipeline);
    }
    @PUT
    @Path("/organizations/{organization}/pipelines/{pipeline}/favorite")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Favorite/unfavorite a pipeline", response = FavoriteImpl.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully favorited/unfavorited a pipeline", response = FavoriteImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = FavoriteImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = FavoriteImpl.class) })
    public Response putPipelineFavorite(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite" ,required=true) UNKNOWN_BASE_TYPE UNKNOWN_BASE_TYPE
)
    throws NotFoundException {
        return delegate.putPipelineFavorite(organization,pipeline,UNKNOWN_BASE_TYPE);
    }
    @PUT
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Stop a build of an organization pipeline", response = PipelineRun.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully stopped a build", response = PipelineRun.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineRun.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineRun.class) })
    public Response putPipelineRun(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the run",required=true) @PathParam("run") String run
,@ApiParam(value = "Set to true to make blocking stop, default: false") @QueryParam("blocking") String blocking
,@ApiParam(value = "Timeout in seconds, default: 10 seconds") @QueryParam("timeOutInSecs") Integer timeOutInSecs
)
    throws NotFoundException {
        return delegate.putPipelineRun(organization,pipeline,run,blocking,timeOutInSecs);
    }
    @GET
    @Path("/search/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Search for any resource details", response = String.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved search result", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class) })
    public Response search(@ApiParam(value = "Query string",required=true) @QueryParam("q") String q
)
    throws NotFoundException {
        return delegate.search(q);
    }
    @GET
    @Path("/classes/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Get classes details", response = String.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved search result", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class) })
    public Response searchClasses(@ApiParam(value = "Query string containing an array of class names",required=true) @QueryParam("q") String q
)
    throws NotFoundException {
        return delegate.searchClasses(q);
    }
}
