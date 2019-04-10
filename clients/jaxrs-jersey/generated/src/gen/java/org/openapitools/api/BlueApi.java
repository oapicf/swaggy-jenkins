package org.openapitools.api;

import org.openapitools.model.*;
import org.openapitools.api.BlueApiService;
import org.openapitools.api.factories.BlueApiServiceFactory;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;

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

import java.util.Map;
import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataParam;

import javax.servlet.ServletConfig;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;
import javax.validation.constraints.*;

@Path("/blue")


@io.swagger.annotations.Api(description = "the blue API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2019-04-10T03:54:45.282Z[GMT]")
public class BlueApi  {
   private final BlueApiService delegate;

   public BlueApi(@Context ServletConfig servletContext) {
      BlueApiService delegate = null;

      if (servletContext != null) {
         String implClass = servletContext.getInitParameter("BlueApi.implementation");
         if (implClass != null && !"".equals(implClass.trim())) {
            try {
               delegate = (BlueApiService) Class.forName(implClass).newInstance();
            } catch (Exception e) {
               throw new RuntimeException(e);
            }
         } 
      }

      if (delegate == null) {
         delegate = BlueApiServiceFactory.getBlueApi();
      }

      this.delegate = delegate;
   }

    @DELETE
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}")
    
    
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
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.deletePipelineQueueItem(organization,pipeline,queue,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/user/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve authenticated user details for an organization", response = User.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved authenticated user details", response = User.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getAuthenticatedUser(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getAuthenticatedUser(organization,securityContext);
    }
    @GET
    @Path("/rest/classes/{class}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Get a list of class names supported by a given class", response = String.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved class names", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getClasses(@ApiParam(value = "Name of the class",required=true) @PathParam("class") String propertyClass
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getClasses(propertyClass,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve organization details", response = Organisation.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = Organisation.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 404, message = "Pipeline cannot be found on Jenkins instance", response = Void.class) })
    public Response getOrganisation(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getOrganisation(organization,securityContext);
    }
    @GET
    @Path("/rest/organizations/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve all organizations details", response = Organisations.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved pipelines details", response = Organisations.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getOrganisations(@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getOrganisations(securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve pipeline details for an organization", response = Pipeline.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = Pipeline.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 404, message = "Pipeline cannot be found on Jenkins instance", response = Void.class) })
    public Response getPipeline(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getPipeline(organization,pipeline,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/activities")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve all activities details for an organization pipeline", response = PipelineActivities.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved all activities details", response = PipelineActivities.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getPipelineActivities(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getPipelineActivities(organization,pipeline,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve branch details for an organization pipeline", response = BranchImpl.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved branch details", response = BranchImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getPipelineBranch(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the branch",required=true) @PathParam("branch") String branch
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getPipelineBranch(organization,pipeline,branch,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve branch run details for an organization pipeline", response = PipelineRun.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved run details", response = PipelineRun.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getPipelineBranchRun(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the branch",required=true) @PathParam("branch") String branch
,@ApiParam(value = "Name of the run",required=true) @PathParam("run") String run
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getPipelineBranchRun(organization,pipeline,branch,run,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/branches")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve all branches details for an organization pipeline", response = MultibranchPipeline.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved all branches details", response = MultibranchPipeline.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getPipelineBranches(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getPipelineBranches(organization,pipeline,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/pipelines/{folder}/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve pipeline folder for an organization", response = PipelineFolderImpl.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved folder details", response = PipelineFolderImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getPipelineFolder(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the folder",required=true) @PathParam("folder") String folder
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getPipelineFolder(organization,folder,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve pipeline details for an organization folder", response = PipelineImpl.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = PipelineImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getPipelineFolderPipeline(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the folder",required=true) @PathParam("folder") String folder
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getPipelineFolderPipeline(organization,pipeline,folder,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/queue")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve queue details for an organization pipeline", response = PipelineQueue.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved queue details", response = PipelineQueue.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getPipelineQueue(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getPipelineQueue(organization,pipeline,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve run details for an organization pipeline", response = PipelineRun.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved run details", response = PipelineRun.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getPipelineRun(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the run",required=true) @PathParam("run") String run
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getPipelineRun(organization,pipeline,run,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Get log for a pipeline run", response = String.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved pipeline run log", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getPipelineRunLog(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the run",required=true) @PathParam("run") String run
,@ApiParam(value = "Start position of the log") @QueryParam("start") Integer start
,@ApiParam(value = "Set to true in order to download the file, otherwise it's passed as a response body") @QueryParam("download") Boolean download
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getPipelineRunLog(organization,pipeline,run,start,download,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve run node details for an organization pipeline", response = PipelineRunNode.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved run node details", response = PipelineRunNode.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getPipelineRunNode(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the run",required=true) @PathParam("run") String run
,@ApiParam(value = "Name of the node",required=true) @PathParam("node") String node
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getPipelineRunNode(organization,pipeline,run,node,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve run node details for an organization pipeline", response = PipelineStepImpl.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved run node step details", response = PipelineStepImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getPipelineRunNodeStep(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the run",required=true) @PathParam("run") String run
,@ApiParam(value = "Name of the node",required=true) @PathParam("node") String node
,@ApiParam(value = "Name of the step",required=true) @PathParam("step") String step
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getPipelineRunNodeStep(organization,pipeline,run,node,step,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Get log for a pipeline run node step", response = String.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved pipeline run node step log", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getPipelineRunNodeStepLog(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the run",required=true) @PathParam("run") String run
,@ApiParam(value = "Name of the node",required=true) @PathParam("node") String node
,@ApiParam(value = "Name of the step",required=true) @PathParam("step") String step
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getPipelineRunNodeStepLog(organization,pipeline,run,node,step,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve run node steps details for an organization pipeline", response = PipelineRunNodeSteps.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved run node steps details", response = PipelineRunNodeSteps.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getPipelineRunNodeSteps(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the run",required=true) @PathParam("run") String run
,@ApiParam(value = "Name of the node",required=true) @PathParam("node") String node
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getPipelineRunNodeSteps(organization,pipeline,run,node,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve run nodes details for an organization pipeline", response = PipelineRunNodes.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved run nodes details", response = PipelineRunNodes.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getPipelineRunNodes(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the run",required=true) @PathParam("run") String run
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getPipelineRunNodes(organization,pipeline,run,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve all runs details for an organization pipeline", response = PipelineRuns.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved runs details", response = PipelineRuns.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getPipelineRuns(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getPipelineRuns(organization,pipeline,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/pipelines/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve all pipelines details for an organization", response = Pipelines.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved pipelines details", response = Pipelines.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getPipelines(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getPipelines(organization,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/scm/{scm}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve SCM details for an organization", response = GithubScm.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved SCM details", response = GithubScm.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getSCM(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of SCM",required=true) @PathParam("scm") String scm
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getSCM(organization,scm,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve SCM organization repositories details for an organization", response = ScmOrganisations.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved SCM organization repositories details", response = ScmOrganisations.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getSCMOrganisationRepositories(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of SCM",required=true) @PathParam("scm") String scm
,@ApiParam(value = "Name of the SCM organization",required=true) @PathParam("scmOrganisation") String scmOrganisation
,@ApiParam(value = "Credential ID") @QueryParam("credentialId") String credentialId
,@ApiParam(value = "Number of items in a page") @QueryParam("pageSize") Integer pageSize
,@ApiParam(value = "Page number") @QueryParam("pageNumber") Integer pageNumber
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getSCMOrganisationRepositories(organization,scm,scmOrganisation,credentialId,pageSize,pageNumber,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve SCM organization repository details for an organization", response = ScmOrganisations.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved SCM organizations details", response = ScmOrganisations.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getSCMOrganisationRepository(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of SCM",required=true) @PathParam("scm") String scm
,@ApiParam(value = "Name of the SCM organization",required=true) @PathParam("scmOrganisation") String scmOrganisation
,@ApiParam(value = "Name of the SCM repository",required=true) @PathParam("repository") String repository
,@ApiParam(value = "Credential ID") @QueryParam("credentialId") String credentialId
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getSCMOrganisationRepository(organization,scm,scmOrganisation,repository,credentialId,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/scm/{scm}/organizations")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve SCM organizations details for an organization", response = ScmOrganisations.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved SCM organizations details", response = ScmOrganisations.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getSCMOrganisations(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of SCM",required=true) @PathParam("scm") String scm
,@ApiParam(value = "Credential ID") @QueryParam("credentialId") String credentialId
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getSCMOrganisations(organization,scm,credentialId,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/users/{user}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve user details for an organization", response = User.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved users details", response = User.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getUser(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the user",required=true) @PathParam("user") String user
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getUser(organization,user,securityContext);
    }
    @GET
    @Path("/rest/users/{user}/favorites")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve user favorites details for an organization", response = UserFavorites.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved users favorites details", response = UserFavorites.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getUserFavorites(@ApiParam(value = "Name of the user",required=true) @PathParam("user") String user
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getUserFavorites(user,securityContext);
    }
    @GET
    @Path("/rest/organizations/{organization}/users/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve users details for an organization", response = User.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved users details", response = User.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getUsers(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getUsers(organization,securityContext);
    }
    @POST
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Replay an organization pipeline run", response = QueueItemImpl.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully replayed a pipeline run", response = QueueItemImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response postPipelineRun(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the run",required=true) @PathParam("run") String run
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.postPipelineRun(organization,pipeline,run,securityContext);
    }
    @POST
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Start a build for an organization pipeline", response = QueueItemImpl.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully started a build", response = QueueItemImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response postPipelineRuns(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.postPipelineRuns(organization,pipeline,securityContext);
    }
    @PUT
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/favorite")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Favorite/unfavorite a pipeline", response = FavoriteImpl.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully favorited/unfavorited a pipeline", response = FavoriteImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response putPipelineFavorite(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Set JSON string body to {"favorite": true} to favorite, set value to false to unfavorite" ,required=true) Body body
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.putPipelineFavorite(organization,pipeline,body,securityContext);
    }
    @PUT
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Stop a build of an organization pipeline", response = PipelineRun.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully stopped a build", response = PipelineRun.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response putPipelineRun(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization
,@ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline
,@ApiParam(value = "Name of the run",required=true) @PathParam("run") String run
,@ApiParam(value = "Set to true to make blocking stop, default: false") @QueryParam("blocking") String blocking
,@ApiParam(value = "Timeout in seconds, default: 10 seconds") @QueryParam("timeOutInSecs") Integer timeOutInSecs
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.putPipelineRun(organization,pipeline,run,blocking,timeOutInSecs,securityContext);
    }
    @GET
    @Path("/rest/search/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Search for any resource details", response = String.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved search result", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response search(@ApiParam(value = "Query string",required=true) @QueryParam("q") String q
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.search(q,securityContext);
    }
    @GET
    @Path("/rest/classes/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Get classes details", response = String.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved search result", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response searchClasses(@ApiParam(value = "Query string containing an array of class names",required=true) @QueryParam("q") String q
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.searchClasses(q,securityContext);
    }
}
