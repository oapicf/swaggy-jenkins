package org.openapitools.api;

import org.openapitools.model.*;

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

import java.util.List;
import java.util.Map;

import java.io.InputStream;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;
import javax.validation.constraints.*;

@Path("/blue")


@io.swagger.annotations.Api(description = "the blue API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2019-04-10T03:54:55.413Z[GMT]")
public interface BlueApi  {
   
    @DELETE
    @Path("/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}")
    
    
    @io.swagger.annotations.ApiOperation(value = "", notes = "Delete queue item from an organization pipeline queue", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully deleted queue item", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response deletePipelineQueueItem( @PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("queue") String queue,@Context SecurityContext securityContext);
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
    public Response getAuthenticatedUser( @PathParam("organization") String organization,@Context SecurityContext securityContext);
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
    public Response getClasses( @PathParam("class") String propertyClass,@Context SecurityContext securityContext);
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
    public Response getOrganisation( @PathParam("organization") String organization,@Context SecurityContext securityContext);
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
    public Response getOrganisations(@Context SecurityContext securityContext);
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
    public Response getPipeline( @PathParam("organization") String organization, @PathParam("pipeline") String pipeline,@Context SecurityContext securityContext);
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
    public Response getPipelineActivities( @PathParam("organization") String organization, @PathParam("pipeline") String pipeline,@Context SecurityContext securityContext);
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
    public Response getPipelineBranch( @PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("branch") String branch,@Context SecurityContext securityContext);
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
    public Response getPipelineBranchRun( @PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("branch") String branch, @PathParam("run") String run,@Context SecurityContext securityContext);
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
    public Response getPipelineBranches( @PathParam("organization") String organization, @PathParam("pipeline") String pipeline,@Context SecurityContext securityContext);
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
    public Response getPipelineFolder( @PathParam("organization") String organization, @PathParam("folder") String folder,@Context SecurityContext securityContext);
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
    public Response getPipelineFolderPipeline( @PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("folder") String folder,@Context SecurityContext securityContext);
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
    public Response getPipelineQueue( @PathParam("organization") String organization, @PathParam("pipeline") String pipeline,@Context SecurityContext securityContext);
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
    public Response getPipelineRun( @PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("run") String run,@Context SecurityContext securityContext);
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
    public Response getPipelineRunLog( @PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("run") String run, @QueryParam("start") Integer start, @QueryParam("download") Boolean download,@Context SecurityContext securityContext);
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
    public Response getPipelineRunNode( @PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("run") String run, @PathParam("node") String node,@Context SecurityContext securityContext);
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
    public Response getPipelineRunNodeStep( @PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("run") String run, @PathParam("node") String node, @PathParam("step") String step,@Context SecurityContext securityContext);
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
    public Response getPipelineRunNodeStepLog( @PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("run") String run, @PathParam("node") String node, @PathParam("step") String step,@Context SecurityContext securityContext);
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
    public Response getPipelineRunNodeSteps( @PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("run") String run, @PathParam("node") String node,@Context SecurityContext securityContext);
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
    public Response getPipelineRunNodes( @PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("run") String run,@Context SecurityContext securityContext);
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
    public Response getPipelineRuns( @PathParam("organization") String organization, @PathParam("pipeline") String pipeline,@Context SecurityContext securityContext);
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
    public Response getPipelines( @PathParam("organization") String organization,@Context SecurityContext securityContext);
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
    public Response getSCM( @PathParam("organization") String organization, @PathParam("scm") String scm,@Context SecurityContext securityContext);
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
    public Response getSCMOrganisationRepositories( @PathParam("organization") String organization, @PathParam("scm") String scm, @PathParam("scmOrganisation") String scmOrganisation, @QueryParam("credentialId") String credentialId, @QueryParam("pageSize") Integer pageSize, @QueryParam("pageNumber") Integer pageNumber,@Context SecurityContext securityContext);
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
    public Response getSCMOrganisationRepository( @PathParam("organization") String organization, @PathParam("scm") String scm, @PathParam("scmOrganisation") String scmOrganisation, @PathParam("repository") String repository, @QueryParam("credentialId") String credentialId,@Context SecurityContext securityContext);
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
    public Response getSCMOrganisations( @PathParam("organization") String organization, @PathParam("scm") String scm, @QueryParam("credentialId") String credentialId,@Context SecurityContext securityContext);
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
    public Response getUser( @PathParam("organization") String organization, @PathParam("user") String user,@Context SecurityContext securityContext);
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
    public Response getUserFavorites( @PathParam("user") String user,@Context SecurityContext securityContext);
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
    public Response getUsers( @PathParam("organization") String organization,@Context SecurityContext securityContext);
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
    public Response postPipelineRun( @PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("run") String run,@Context SecurityContext securityContext);
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
    public Response postPipelineRuns( @PathParam("organization") String organization, @PathParam("pipeline") String pipeline,@Context SecurityContext securityContext);
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
    public Response putPipelineFavorite( @PathParam("organization") String organization, @PathParam("pipeline") String pipeline,@ApiParam(value = "Set JSON string body to {"favorite": true} to favorite, set value to false to unfavorite" ,required=true) Body body,@Context SecurityContext securityContext);
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
    public Response putPipelineRun( @PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("run") String run, @QueryParam("blocking") String blocking, @QueryParam("timeOutInSecs") Integer timeOutInSecs,@Context SecurityContext securityContext);
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
    public Response search( @NotNull @QueryParam("q") String q,@Context SecurityContext securityContext);
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
    public Response searchClasses( @NotNull @QueryParam("q") String q,@Context SecurityContext securityContext);
}
