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
import io.swagger.api.BlueApiService;

import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;

import io.swagger.annotations.*;
import java.io.InputStream;

import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;

import java.util.List;
import javax.validation.constraints.*;
@Path("/blue")
@RequestScoped

@Api(description = "the blue API")


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2017-08-03T23:34:47.267Z")

public class BlueApi  {

  @Context SecurityContext securityContext;

  @Inject BlueApiService delegate;


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
    public Response deletePipelineQueueItem(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline, @ApiParam(value = "Name of the queue item",required=true) @PathParam("queue") String queue) {
        return delegate.deletePipelineQueueItem(organization, pipeline, queue, securityContext);
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
    public Response getAuthenticatedUser(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization) {
        return delegate.getAuthenticatedUser(organization, securityContext);
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
    public Response getClasses(@ApiParam(value = "Name of the class",required=true) @PathParam("class") String propertyClass) {
        return delegate.getClasses(propertyClass, securityContext);
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
    public Response getOrganisation(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization) {
        return delegate.getOrganisation(organization, securityContext);
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
        return delegate.getOrganisations(securityContext);
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
    public Response getPipeline(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline) {
        return delegate.getPipeline(organization, pipeline, securityContext);
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
    public Response getPipelineActivities(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline) {
        return delegate.getPipelineActivities(organization, pipeline, securityContext);
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
    public Response getPipelineBranch(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline, @ApiParam(value = "Name of the branch",required=true) @PathParam("branch") String branch) {
        return delegate.getPipelineBranch(organization, pipeline, branch, securityContext);
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
    public Response getPipelineBranchRun(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline, @ApiParam(value = "Name of the branch",required=true) @PathParam("branch") String branch, @ApiParam(value = "Name of the run",required=true) @PathParam("run") String run) {
        return delegate.getPipelineBranchRun(organization, pipeline, branch, run, securityContext);
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
    public Response getPipelineBranches(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline) {
        return delegate.getPipelineBranches(organization, pipeline, securityContext);
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
    public Response getPipelineFolder(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the folder",required=true) @PathParam("folder") String folder) {
        return delegate.getPipelineFolder(organization, folder, securityContext);
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
    public Response getPipelineFolderPipeline(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline, @ApiParam(value = "Name of the folder",required=true) @PathParam("folder") String folder) {
        return delegate.getPipelineFolderPipeline(organization, pipeline, folder, securityContext);
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
    public Response getPipelineQueue(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline) {
        return delegate.getPipelineQueue(organization, pipeline, securityContext);
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
    public Response getPipelineRun(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline, @ApiParam(value = "Name of the run",required=true) @PathParam("run") String run) {
        return delegate.getPipelineRun(organization, pipeline, run, securityContext);
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
    public Response getPipelineRunLog(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline, @ApiParam(value = "Name of the run",required=true) @PathParam("run") String run,  @ApiParam(value = "Start position of the log")  @QueryParam("start") Integer start,  @ApiParam(value = "Set to true in order to download the file, otherwise it's passed as a response body")  @QueryParam("download") Boolean download) {
        return delegate.getPipelineRunLog(organization, pipeline, run, start, download, securityContext);
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
    public Response getPipelineRunNode(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline, @ApiParam(value = "Name of the run",required=true) @PathParam("run") String run, @ApiParam(value = "Name of the node",required=true) @PathParam("node") String node) {
        return delegate.getPipelineRunNode(organization, pipeline, run, node, securityContext);
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
    public Response getPipelineRunNodeStep(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline, @ApiParam(value = "Name of the run",required=true) @PathParam("run") String run, @ApiParam(value = "Name of the node",required=true) @PathParam("node") String node, @ApiParam(value = "Name of the step",required=true) @PathParam("step") String step) {
        return delegate.getPipelineRunNodeStep(organization, pipeline, run, node, step, securityContext);
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
    public Response getPipelineRunNodeStepLog(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline, @ApiParam(value = "Name of the run",required=true) @PathParam("run") String run, @ApiParam(value = "Name of the node",required=true) @PathParam("node") String node, @ApiParam(value = "Name of the step",required=true) @PathParam("step") String step) {
        return delegate.getPipelineRunNodeStepLog(organization, pipeline, run, node, step, securityContext);
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
    public Response getPipelineRunNodeSteps(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline, @ApiParam(value = "Name of the run",required=true) @PathParam("run") String run, @ApiParam(value = "Name of the node",required=true) @PathParam("node") String node) {
        return delegate.getPipelineRunNodeSteps(organization, pipeline, run, node, securityContext);
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
    public Response getPipelineRunNodes(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline, @ApiParam(value = "Name of the run",required=true) @PathParam("run") String run) {
        return delegate.getPipelineRunNodes(organization, pipeline, run, securityContext);
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
    public Response getPipelineRuns(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline) {
        return delegate.getPipelineRuns(organization, pipeline, securityContext);
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
    public Response getPipelines(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization) {
        return delegate.getPipelines(organization, securityContext);
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
    public Response getSCM(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of SCM",required=true) @PathParam("scm") String scm) {
        return delegate.getSCM(organization, scm, securityContext);
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
    public Response getSCMOrganisationRepositories(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of SCM",required=true) @PathParam("scm") String scm, @ApiParam(value = "Name of the SCM organization",required=true) @PathParam("scmOrganisation") String scmOrganisation,  @ApiParam(value = "Credential ID")  @QueryParam("credentialId") String credentialId,  @ApiParam(value = "Number of items in a page")  @QueryParam("pageSize") Integer pageSize,  @ApiParam(value = "Page number")  @QueryParam("pageNumber") Integer pageNumber) {
        return delegate.getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber, securityContext);
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
    public Response getSCMOrganisationRepository(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of SCM",required=true) @PathParam("scm") String scm, @ApiParam(value = "Name of the SCM organization",required=true) @PathParam("scmOrganisation") String scmOrganisation, @ApiParam(value = "Name of the SCM repository",required=true) @PathParam("repository") String repository,  @ApiParam(value = "Credential ID")  @QueryParam("credentialId") String credentialId) {
        return delegate.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId, securityContext);
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
    public Response getSCMOrganisations(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of SCM",required=true) @PathParam("scm") String scm,  @ApiParam(value = "Credential ID")  @QueryParam("credentialId") String credentialId) {
        return delegate.getSCMOrganisations(organization, scm, credentialId, securityContext);
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
    public Response getUser(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the user",required=true) @PathParam("user") String user) {
        return delegate.getUser(organization, user, securityContext);
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
    public Response getUserFavorites(@ApiParam(value = "Name of the user",required=true) @PathParam("user") String user) {
        return delegate.getUserFavorites(user, securityContext);
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
    public Response getUsers(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization) {
        return delegate.getUsers(organization, securityContext);
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
    public Response postPipelineRun(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline, @ApiParam(value = "Name of the run",required=true) @PathParam("run") String run) {
        return delegate.postPipelineRun(organization, pipeline, run, securityContext);
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
    public Response postPipelineRuns(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline) {
        return delegate.postPipelineRuns(organization, pipeline, securityContext);
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
    public Response putPipelineFavorite(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline, @ApiParam(value = "Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite" ,required=true) String body) {
        return delegate.putPipelineFavorite(organization, pipeline, body, securityContext);
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
    public Response putPipelineRun(@ApiParam(value = "Name of the organization",required=true) @PathParam("organization") String organization, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline, @ApiParam(value = "Name of the run",required=true) @PathParam("run") String run,  @ApiParam(value = "Set to true to make blocking stop, default: false")  @QueryParam("blocking") String blocking,  @ApiParam(value = "Timeout in seconds, default: 10 seconds")  @QueryParam("timeOutInSecs") Integer timeOutInSecs) {
        return delegate.putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs, securityContext);
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
    public Response search( @NotNull @ApiParam(value = "Query string",required=true)  @QueryParam("q") String q) {
        return delegate.search(q, securityContext);
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
    public Response searchClasses( @NotNull @ApiParam(value = "Query string containing an array of class names",required=true)  @QueryParam("q") String q) {
        return delegate.searchClasses(q, securityContext);
    }
}
