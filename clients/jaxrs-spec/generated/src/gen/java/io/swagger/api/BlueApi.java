package io.swagger.api;

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

import javax.ws.rs.*;
import javax.ws.rs.core.Response;

import io.swagger.annotations.*;

import java.util.List;
import javax.validation.constraints.*;

@Path("/blue")

@Api(description = "the blue API")


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2017-08-03T23:35:03.699Z")


public class BlueApi  {

    @DELETE
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Delete queue item from an organization pipeline queue", response = void.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully deleted queue item", response = void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class) })
    public Response deletePipelineQueueItem(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("queue") @ApiParam("Name of the queue item") String queue) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/user/")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve authenticated user details for an organization", response = User.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved authenticated user details", response = User.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = User.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = User.class) })
    public Response getAuthenticatedUser(@PathParam("organization") @ApiParam("Name of the organization") String organization) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/classes/{class}")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Get a list of class names supported by a given class", response = String.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved class names", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class) })
    public Response getClasses(@PathParam("class") @ApiParam("Name of the class") String propertyClass) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve organization details", response = Organisation.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = Organisation.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Organisation.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Organisation.class),
        @ApiResponse(code = 404, message = "Pipeline cannot be found on Jenkins instance", response = Organisation.class) })
    public Response getOrganisation(@PathParam("organization") @ApiParam("Name of the organization") String organization) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve all organizations details", response = Organisations.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipelines details", response = Organisations.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Organisations.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Organisations.class) })
    public Response getOrganisations() {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve pipeline details for an organization", response = Pipeline.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = Pipeline.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Pipeline.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Pipeline.class),
        @ApiResponse(code = 404, message = "Pipeline cannot be found on Jenkins instance", response = Pipeline.class) })
    public Response getPipeline(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/activities")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve all activities details for an organization pipeline", response = PipelineActivities.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved all activities details", response = PipelineActivities.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineActivities.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineActivities.class) })
    public Response getPipelineActivities(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve branch details for an organization pipeline", response = BranchImpl.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved branch details", response = BranchImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = BranchImpl.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = BranchImpl.class) })
    public Response getPipelineBranch(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("branch") @ApiParam("Name of the branch") String branch) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve branch run details for an organization pipeline", response = PipelineRun.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved run details", response = PipelineRun.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineRun.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineRun.class) })
    public Response getPipelineBranchRun(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("branch") @ApiParam("Name of the branch") String branch,@PathParam("run") @ApiParam("Name of the run") String run) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/branches")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve all branches details for an organization pipeline", response = MultibranchPipeline.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved all branches details", response = MultibranchPipeline.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = MultibranchPipeline.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = MultibranchPipeline.class) })
    public Response getPipelineBranches(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/pipelines/{folder}/")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve pipeline folder for an organization", response = PipelineFolderImpl.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved folder details", response = PipelineFolderImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineFolderImpl.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineFolderImpl.class) })
    public Response getPipelineFolder(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("folder") @ApiParam("Name of the folder") String folder) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve pipeline details for an organization folder", response = PipelineImpl.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = PipelineImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineImpl.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineImpl.class) })
    public Response getPipelineFolderPipeline(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("folder") @ApiParam("Name of the folder") String folder) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/queue")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve queue details for an organization pipeline", response = PipelineQueue.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved queue details", response = PipelineQueue.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineQueue.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineQueue.class) })
    public Response getPipelineQueue(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve run details for an organization pipeline", response = PipelineRun.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved run details", response = PipelineRun.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineRun.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineRun.class) })
    public Response getPipelineRun(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("run") @ApiParam("Name of the run") String run) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Get log for a pipeline run", response = String.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline run log", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class) })
    public Response getPipelineRunLog(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("run") @ApiParam("Name of the run") String run,@QueryParam("start")  Integer start,@QueryParam("download")  Boolean download) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve run node details for an organization pipeline", response = PipelineRunNode.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved run node details", response = PipelineRunNode.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineRunNode.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineRunNode.class) })
    public Response getPipelineRunNode(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("run") @ApiParam("Name of the run") String run,@PathParam("node") @ApiParam("Name of the node") String node) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve run node details for an organization pipeline", response = PipelineStepImpl.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved run node step details", response = PipelineStepImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineStepImpl.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineStepImpl.class) })
    public Response getPipelineRunNodeStep(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("run") @ApiParam("Name of the run") String run,@PathParam("node") @ApiParam("Name of the node") String node,@PathParam("step") @ApiParam("Name of the step") String step) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Get log for a pipeline run node step", response = String.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline run node step log", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class) })
    public Response getPipelineRunNodeStepLog(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("run") @ApiParam("Name of the run") String run,@PathParam("node") @ApiParam("Name of the node") String node,@PathParam("step") @ApiParam("Name of the step") String step) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve run node steps details for an organization pipeline", response = PipelineRunNodeSteps.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved run node steps details", response = PipelineRunNodeSteps.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineRunNodeSteps.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineRunNodeSteps.class) })
    public Response getPipelineRunNodeSteps(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("run") @ApiParam("Name of the run") String run,@PathParam("node") @ApiParam("Name of the node") String node) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve run nodes details for an organization pipeline", response = PipelineRunNodes.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved run nodes details", response = PipelineRunNodes.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineRunNodes.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineRunNodes.class) })
    public Response getPipelineRunNodes(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("run") @ApiParam("Name of the run") String run) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve all runs details for an organization pipeline", response = PipelineRuns.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved runs details", response = PipelineRuns.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineRuns.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineRuns.class) })
    public Response getPipelineRuns(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/pipelines/")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve all pipelines details for an organization", response = Pipelines.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipelines details", response = Pipelines.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Pipelines.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Pipelines.class) })
    public Response getPipelines(@PathParam("organization") @ApiParam("Name of the organization") String organization) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/scm/{scm}")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve SCM details for an organization", response = GithubScm.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved SCM details", response = GithubScm.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = GithubScm.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = GithubScm.class) })
    public Response getSCM(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("scm") @ApiParam("Name of SCM") String scm) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve SCM organization repositories details for an organization", response = ScmOrganisations.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved SCM organization repositories details", response = ScmOrganisations.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = ScmOrganisations.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = ScmOrganisations.class) })
    public Response getSCMOrganisationRepositories(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("scm") @ApiParam("Name of SCM") String scm,@PathParam("scmOrganisation") @ApiParam("Name of the SCM organization") String scmOrganisation,@QueryParam("credentialId")  String credentialId,@QueryParam("pageSize")  Integer pageSize,@QueryParam("pageNumber")  Integer pageNumber) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve SCM organization repository details for an organization", response = ScmOrganisations.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved SCM organizations details", response = ScmOrganisations.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = ScmOrganisations.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = ScmOrganisations.class) })
    public Response getSCMOrganisationRepository(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("scm") @ApiParam("Name of SCM") String scm,@PathParam("scmOrganisation") @ApiParam("Name of the SCM organization") String scmOrganisation,@PathParam("repository") @ApiParam("Name of the SCM repository") String repository,@QueryParam("credentialId")  String credentialId) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/scm/{scm}/organizations")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve SCM organizations details for an organization", response = ScmOrganisations.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved SCM organizations details", response = ScmOrganisations.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = ScmOrganisations.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = ScmOrganisations.class) })
    public Response getSCMOrganisations(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("scm") @ApiParam("Name of SCM") String scm,@QueryParam("credentialId")  String credentialId) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/users/{user}")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve user details for an organization", response = User.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved users details", response = User.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = User.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = User.class) })
    public Response getUser(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("user") @ApiParam("Name of the user") String user) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/users/{user}/favorites")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve user favorites details for an organization", response = UserFavorites.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved users favorites details", response = UserFavorites.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = UserFavorites.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = UserFavorites.class) })
    public Response getUserFavorites(@PathParam("user") @ApiParam("Name of the user") String user) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/organizations/{organization}/users/")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve users details for an organization", response = User.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved users details", response = User.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = User.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = User.class) })
    public Response getUsers(@PathParam("organization") @ApiParam("Name of the organization") String organization) {
        return Response.ok().entity("magic!").build();
    }

    @POST
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Replay an organization pipeline run", response = QueueItemImpl.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully replayed a pipeline run", response = QueueItemImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = QueueItemImpl.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = QueueItemImpl.class) })
    public Response postPipelineRun(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("run") @ApiParam("Name of the run") String run) {
        return Response.ok().entity("magic!").build();
    }

    @POST
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Start a build for an organization pipeline", response = QueueItemImpl.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully started a build", response = QueueItemImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = QueueItemImpl.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = QueueItemImpl.class) })
    public Response postPipelineRuns(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline) {
        return Response.ok().entity("magic!").build();
    }

    @PUT
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/favorite")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Favorite/unfavorite a pipeline", response = FavoriteImpl.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully favorited/unfavorited a pipeline", response = FavoriteImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = FavoriteImpl.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = FavoriteImpl.class) })
    public Response putPipelineFavorite(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,String body) {
        return Response.ok().entity("magic!").build();
    }

    @PUT
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Stop a build of an organization pipeline", response = PipelineRun.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully stopped a build", response = PipelineRun.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = PipelineRun.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = PipelineRun.class) })
    public Response putPipelineRun(@PathParam("organization") @ApiParam("Name of the organization") String organization,@PathParam("pipeline") @ApiParam("Name of the pipeline") String pipeline,@PathParam("run") @ApiParam("Name of the run") String run,@QueryParam("blocking")  String blocking,@QueryParam("timeOutInSecs")  Integer timeOutInSecs) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/search/")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Search for any resource details", response = String.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved search result", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class) })
    public Response search(@QueryParam("q") @NotNull  String q) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/rest/classes/")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Get classes details", response = String.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved search result", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class) })
    public Response searchClasses(@QueryParam("q") @NotNull  String q) {
        return Response.ok().entity("magic!").build();
    }
}

