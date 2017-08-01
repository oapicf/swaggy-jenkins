package io.swagger.api;

import io.swagger.model.*;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;

import io.swagger.model.GetMultibranchPipeline;
import io.swagger.model.GetOrganisations;
import io.swagger.model.GetPipelines;
import io.swagger.model.IojenkinsblueoceanrestimplpipelineBranchImpl;
import io.swagger.model.IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl;
import io.swagger.model.IojenkinsblueoceanserviceembeddedrestPipelineImpl;
import io.swagger.model.SwaggyjenkinsOrganisation;
import io.swagger.model.SwaggyjenkinsPipeline;
import io.swagger.model.SwaggyjenkinsUser;

import java.util.List;

import java.io.InputStream;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;
import javax.validation.constraints.*;

@Path("/blue")


@io.swagger.annotations.Api(description = "the blue API")
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaResteasyEapServerCodegen", date = "2017-07-25T10:45:10.773+10:00")
public interface BlueApi  {
   
    @GET
    @Path("/rest/organizations/{organisation}/user/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve authenticated user details for an organisation", response = SwaggyjenkinsUser.class, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved authenticated user details", response = SwaggyjenkinsUser.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = SwaggyjenkinsUser.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = SwaggyjenkinsUser.class) })
    public Response getAuthenticatedUser( @PathParam("organisation") String organisation,@Context SecurityContext securityContext);
    @GET
    @Path("/rest/classes/{class}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Get a list of class names supported by a given class", response = String.class, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved class names", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class) })
    public Response getClasses( @PathParam("class") String propertyClass,@Context SecurityContext securityContext);
    @GET
    @Path("/rest/organizations/{organisation}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve organisation details", response = SwaggyjenkinsOrganisation.class, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = SwaggyjenkinsOrganisation.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = SwaggyjenkinsOrganisation.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = SwaggyjenkinsOrganisation.class),
        
        @io.swagger.annotations.ApiResponse(code = 404, message = "Pipeline cannot be found on Jenkins instance", response = SwaggyjenkinsOrganisation.class) })
    public Response getOrganisation( @PathParam("organisation") String organisation,@Context SecurityContext securityContext);
    @GET
    @Path("/rest/organizations/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve all organisations details", response = GetOrganisations.class, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved pipelines details", response = GetOrganisations.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = GetOrganisations.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = GetOrganisations.class) })
    public Response getOrganisations(@Context SecurityContext securityContext);
    @GET
    @Path("/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve branch details for an organisation pipeline", response = IojenkinsblueoceanrestimplpipelineBranchImpl.class, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved branch details", response = IojenkinsblueoceanrestimplpipelineBranchImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = IojenkinsblueoceanrestimplpipelineBranchImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = IojenkinsblueoceanrestimplpipelineBranchImpl.class) })
    public Response getPipelineBranchByOrg( @PathParam("organisation") String organisation, @PathParam("pipeline") String pipeline, @PathParam("branch") String branch,@Context SecurityContext securityContext);
    @GET
    @Path("/rest/organizations/{organisation}/pipelines/{pipeline}/branches")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve all branches details for an organisation pipeline", response = GetMultibranchPipeline.class, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved all branches details", response = GetMultibranchPipeline.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = GetMultibranchPipeline.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = GetMultibranchPipeline.class) })
    public Response getPipelineBranchesByOrg( @PathParam("organisation") String organisation, @PathParam("pipeline") String pipeline,@Context SecurityContext securityContext);
    @GET
    @Path("/rest/organizations/{organisation}/pipelines/{pipeline}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve pipeline details for an organisation", response = SwaggyjenkinsPipeline.class, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = SwaggyjenkinsPipeline.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = SwaggyjenkinsPipeline.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = SwaggyjenkinsPipeline.class),
        
        @io.swagger.annotations.ApiResponse(code = 404, message = "Pipeline cannot be found on Jenkins instance", response = SwaggyjenkinsPipeline.class) })
    public Response getPipelineByOrg( @PathParam("organisation") String organisation, @PathParam("pipeline") String pipeline,@Context SecurityContext securityContext);
    @GET
    @Path("/rest/organizations/{organisation}/pipelines/{folder}/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve pipeline folder for an organisation", response = IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.class, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved folder details", response = IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.class) })
    public Response getPipelineFolderByOrg( @PathParam("organisation") String organisation, @PathParam("folder") String folder,@Context SecurityContext securityContext);
    @GET
    @Path("/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve pipeline details for an organisation folder", response = IojenkinsblueoceanserviceembeddedrestPipelineImpl.class, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = IojenkinsblueoceanserviceembeddedrestPipelineImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = IojenkinsblueoceanserviceembeddedrestPipelineImpl.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = IojenkinsblueoceanserviceembeddedrestPipelineImpl.class) })
    public Response getPipelineFolderByOrg_1( @PathParam("organisation") String organisation, @PathParam("pipeline") String pipeline, @PathParam("folder") String folder,@Context SecurityContext securityContext);
    @GET
    @Path("/rest/organizations/{organisation}/pipelines/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve all pipelines details for an organisation", response = GetPipelines.class, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved pipelines details", response = GetPipelines.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = GetPipelines.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = GetPipelines.class) })
    public Response getPipelinesByOrg( @PathParam("organisation") String organisation,@Context SecurityContext securityContext);
    @GET
    @Path("/rest/organizations/{organisation}/users/{user}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve user details for an organisation", response = SwaggyjenkinsUser.class, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved users details", response = SwaggyjenkinsUser.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = SwaggyjenkinsUser.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = SwaggyjenkinsUser.class) })
    public Response getUser( @PathParam("organisation") String organisation, @PathParam("user") String user,@Context SecurityContext securityContext);
    @GET
    @Path("/rest/organizations/{organisation}/users/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve users details for an organisation", response = SwaggyjenkinsUser.class, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved users details", response = SwaggyjenkinsUser.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = SwaggyjenkinsUser.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = SwaggyjenkinsUser.class) })
    public Response getUsers( @PathParam("organisation") String organisation,@Context SecurityContext securityContext);
    @GET
    @Path("/rest/classes/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Get classes details", response = String.class, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved search result", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class) })
    public Response search( @NotNull @QueryParam("q") String q,@Context SecurityContext securityContext);
    @GET
    @Path("/rest/search/")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Search for any resource details", response = String.class, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved search result", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class) })
    public Response search_2( @NotNull @QueryParam("q") String q,@Context SecurityContext securityContext);
}
