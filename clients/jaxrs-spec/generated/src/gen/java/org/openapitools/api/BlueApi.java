package org.openapitools.api;

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

import javax.ws.rs.*;
import javax.ws.rs.core.Response;

import io.swagger.annotations.*;

import java.io.InputStream;
import java.util.Map;
import java.util.List;
import javax.validation.constraints.*;
import javax.validation.Valid;

@Path("/blue/rest")
@Api(description = "the blue API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2022-02-13T02:22:19.792787Z[Etc/UTC]")public class BlueApi {

    @DELETE
    @Path("/organizations/{organization}/pipelines/{pipeline}/queue/{queue}")
    @ApiOperation(value = "", notes = "Delete queue item from an organization pipeline queue", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully deleted queue item", response = Void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response deletePipelineQueueItem(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("queue") @ApiParam("Name of the queue item") String queue) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/user/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve authenticated user details for an organization", response = User.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved authenticated user details", response = User.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getAuthenticatedUser(@PathParam("organization") @ApiParam("Name of the organization") String organization) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/classes/{class}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Get a list of class names supported by a given class", response = String.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved class names", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getClasses(@PathParam("class") @ApiParam("Name of the class") String propertyClass) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve organization details", response = Organisation.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = Organisation.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Pipeline cannot be found on Jenkins instance", response = Void.class)
    })
    public Response getOrganisation(@PathParam("organization") @ApiParam("Name of the organization") String organization) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve all organizations details", response = Organisation.class, responseContainer = "List", authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipelines details", response = Organisation.class, responseContainer = "List"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getOrganisations() {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve pipeline details for an organization", response = Pipeline.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = Pipeline.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Pipeline cannot be found on Jenkins instance", response = Void.class)
    })
    public Response getPipeline(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/activities")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve all activities details for an organization pipeline", response = PipelineActivity.class, responseContainer = "List", authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved all activities details", response = PipelineActivity.class, responseContainer = "List"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getPipelineActivities(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve branch details for an organization pipeline", response = BranchImpl.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved branch details", response = BranchImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getPipelineBranch(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("branch") @ApiParam("Name of the branch") String branch) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve branch run details for an organization pipeline", response = PipelineRun.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved run details", response = PipelineRun.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getPipelineBranchRun(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("branch") @ApiParam("Name of the branch") String branch,@PathParam("run") @ApiParam("Name of the run") String run) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/branches")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve all branches details for an organization pipeline", response = MultibranchPipeline.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved all branches details", response = MultibranchPipeline.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getPipelineBranches(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/pipelines/{folder}/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve pipeline folder for an organization", response = PipelineFolderImpl.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved folder details", response = PipelineFolderImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getPipelineFolder(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("folder") @ApiParam("Name of the folder") String folder) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve pipeline details for an organization folder", response = PipelineImpl.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = PipelineImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getPipelineFolderPipeline(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("folder") @ApiParam("Name of the folder") String folder) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/queue")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve queue details for an organization pipeline", response = QueueItemImpl.class, responseContainer = "List", authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved queue details", response = QueueItemImpl.class, responseContainer = "List"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getPipelineQueue(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs/{run}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve run details for an organization pipeline", response = PipelineRun.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved run details", response = PipelineRun.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getPipelineRun(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("run") @ApiParam("Name of the run") String run) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Get log for a pipeline run", response = String.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline run log", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getPipelineRunLog(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("run") @ApiParam("Name of the run") String run,@QueryParam("start")  @ApiParam("Start position of the log")  Integer start,@QueryParam("download")  @ApiParam("Set to true in order to download the file, otherwise it&#39;s passed as a response body")  Boolean download) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve run node details for an organization pipeline", response = PipelineRunNode.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved run node details", response = PipelineRunNode.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getPipelineRunNode(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("run") @ApiParam("Name of the run") String run,@PathParam("node") @ApiParam("Name of the node") String node) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve run node details for an organization pipeline", response = PipelineStepImpl.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved run node step details", response = PipelineStepImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getPipelineRunNodeStep(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("run") @ApiParam("Name of the run") String run,@PathParam("node") @ApiParam("Name of the node") String node,@PathParam("step") @ApiParam("Name of the step") String step) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Get log for a pipeline run node step", response = String.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline run node step log", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getPipelineRunNodeStepLog(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("run") @ApiParam("Name of the run") String run,@PathParam("node") @ApiParam("Name of the node") String node,@PathParam("step") @ApiParam("Name of the step") String step) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve run node steps details for an organization pipeline", response = PipelineStepImpl.class, responseContainer = "List", authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved run node steps details", response = PipelineStepImpl.class, responseContainer = "List"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getPipelineRunNodeSteps(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("run") @ApiParam("Name of the run") String run,@PathParam("node") @ApiParam("Name of the node") String node) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve run nodes details for an organization pipeline", response = PipelineRunNode.class, responseContainer = "List", authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved run nodes details", response = PipelineRunNode.class, responseContainer = "List"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getPipelineRunNodes(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("run") @ApiParam("Name of the run") String run) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve all runs details for an organization pipeline", response = PipelineRun.class, responseContainer = "List", authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved runs details", response = PipelineRun.class, responseContainer = "List"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getPipelineRuns(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/pipelines/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve all pipelines details for an organization", response = Pipeline.class, responseContainer = "List", authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipelines details", response = Pipeline.class, responseContainer = "List"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getPipelines(@PathParam("organization") @ApiParam("Name of the organization") String organization) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/scm/{scm}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve SCM details for an organization", response = GithubScm.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved SCM details", response = GithubScm.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getSCM(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("scm") @ApiParam("Name of SCM") String scm) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve SCM organization repositories details for an organization", response = GithubOrganization.class, responseContainer = "List", authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved SCM organization repositories details", response = GithubOrganization.class, responseContainer = "List"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getSCMOrganisationRepositories(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("scm") @ApiParam("Name of SCM") String scm,@PathParam("scmOrganisation") @ApiParam("Name of the SCM organization") String scmOrganisation,@QueryParam("credentialId")  @ApiParam("Credential ID")  String credentialId,@QueryParam("pageSize")  @ApiParam("Number of items in a page")  Integer pageSize,@QueryParam("pageNumber")  @ApiParam("Page number")  Integer pageNumber) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve SCM organization repository details for an organization", response = GithubOrganization.class, responseContainer = "List", authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved SCM organizations details", response = GithubOrganization.class, responseContainer = "List"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getSCMOrganisationRepository(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("scm") @ApiParam("Name of SCM") String scm,@PathParam("scmOrganisation") @ApiParam("Name of the SCM organization") String scmOrganisation,@PathParam("repository") @ApiParam("Name of the SCM repository") String repository,@QueryParam("credentialId")  @ApiParam("Credential ID")  String credentialId) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/scm/{scm}/organizations")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve SCM organizations details for an organization", response = GithubOrganization.class, responseContainer = "List", authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved SCM organizations details", response = GithubOrganization.class, responseContainer = "List"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getSCMOrganisations(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("scm") @ApiParam("Name of SCM") String scm,@QueryParam("credentialId")  @ApiParam("Credential ID")  String credentialId) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/users/{user}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve user details for an organization", response = User.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved users details", response = User.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getUser(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("user") @ApiParam("Name of the user") String user) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/users/{user}/favorites")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve user favorites details for an organization", response = FavoriteImpl.class, responseContainer = "List", authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved users favorites details", response = FavoriteImpl.class, responseContainer = "List"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getUserFavorites(@PathParam("user") @ApiParam("Name of the user") String user) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/organizations/{organization}/users/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve users details for an organization", response = User.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved users details", response = User.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getUsers(@PathParam("organization") @ApiParam("Name of the organization") String organization) {
        return Response.ok().entity("magic!").build();
    }

    @POST
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Replay an organization pipeline run", response = QueueItemImpl.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully replayed a pipeline run", response = QueueItemImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response postPipelineRun(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("run") @ApiParam("Name of the run") String run) {
        return Response.ok().entity("magic!").build();
    }

    @POST
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Start a build for an organization pipeline", response = QueueItemImpl.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully started a build", response = QueueItemImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response postPipelineRuns(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline) {
        return Response.ok().entity("magic!").build();
    }

    @PUT
    @Path("/organizations/{organization}/pipelines/{pipeline}/favorite")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Favorite/unfavorite a pipeline", response = FavoriteImpl.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully favorited/unfavorited a pipeline", response = FavoriteImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response putPipelineFavorite(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@Valid @NotNull Boolean body) {
        return Response.ok().entity("magic!").build();
    }

    @PUT
    @Path("/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Stop a build of an organization pipeline", response = PipelineRun.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully stopped a build", response = PipelineRun.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response putPipelineRun(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("run") @ApiParam("Name of the run") String run,@QueryParam("blocking")  @ApiParam("Set to true to make blocking stop, default: false")  String blocking,@QueryParam("timeOutInSecs")  @ApiParam("Timeout in seconds, default: 10 seconds")  Integer timeOutInSecs) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/search/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Search for any resource details", response = String.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved search result", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response search(@QueryParam("q") @NotNull  @ApiParam("Query string")  String q) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/classes/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Get classes details", response = String.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved search result", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response searchClasses(@QueryParam("q") @NotNull  @ApiParam("Query string containing an array of class names")  String q) {
        return Response.ok().entity("magic!").build();
    }
}
