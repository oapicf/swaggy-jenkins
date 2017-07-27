package io.swagger.api;

import io.swagger.model.GetMultibranchPipeline;
import io.swagger.model.GetOrganisations;
import io.swagger.model.GetPipelines;
import io.swagger.model.IojenkinsblueoceanrestimplpipelineBranchImpl;
import io.swagger.model.IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl;
import io.swagger.model.IojenkinsblueoceanserviceembeddedrestPipelineImpl;
import io.swagger.model.SwaggyjenkinsOrganisation;
import io.swagger.model.SwaggyjenkinsPipeline;
import io.swagger.model.SwaggyjenkinsUser;
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


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2017-07-25T10:45:05.448+10:00")

public class BlueApi  {

  @Context SecurityContext securityContext;

  @Inject BlueApiService delegate;


    @GET
    @Path("/rest/organizations/{organisation}/user/")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve authenticated user details for an organisation", response = SwaggyjenkinsUser.class, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved authenticated user details", response = SwaggyjenkinsUser.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = SwaggyjenkinsUser.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = SwaggyjenkinsUser.class) })
    public Response getAuthenticatedUser(@ApiParam(value = "Name of the organisation",required=true) @PathParam("organisation") String organisation) {
        return delegate.getAuthenticatedUser(organisation, securityContext);
    }

    @GET
    @Path("/rest/classes/{class}")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Get a list of class names supported by a given class", response = String.class, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved class names", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class) })
    public Response getClasses(@ApiParam(value = "Name of the class",required=true) @PathParam("class") String propertyClass) {
        return delegate.getClasses(propertyClass, securityContext);
    }

    @GET
    @Path("/rest/organizations/{organisation}")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve organisation details", response = SwaggyjenkinsOrganisation.class, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = SwaggyjenkinsOrganisation.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = SwaggyjenkinsOrganisation.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = SwaggyjenkinsOrganisation.class),
        @ApiResponse(code = 404, message = "Pipeline cannot be found on Jenkins instance", response = SwaggyjenkinsOrganisation.class) })
    public Response getOrganisation(@ApiParam(value = "Name of the organisation",required=true) @PathParam("organisation") String organisation) {
        return delegate.getOrganisation(organisation, securityContext);
    }

    @GET
    @Path("/rest/organizations/")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve all organisations details", response = GetOrganisations.class, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipelines details", response = GetOrganisations.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = GetOrganisations.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = GetOrganisations.class) })
    public Response getOrganisations() {
        return delegate.getOrganisations(securityContext);
    }

    @GET
    @Path("/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve branch details for an organisation pipeline", response = IojenkinsblueoceanrestimplpipelineBranchImpl.class, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved branch details", response = IojenkinsblueoceanrestimplpipelineBranchImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = IojenkinsblueoceanrestimplpipelineBranchImpl.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = IojenkinsblueoceanrestimplpipelineBranchImpl.class) })
    public Response getPipelineBranchByOrg(@ApiParam(value = "Name of the organisation",required=true) @PathParam("organisation") String organisation, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline, @ApiParam(value = "Name of the branch",required=true) @PathParam("branch") String branch) {
        return delegate.getPipelineBranchByOrg(organisation, pipeline, branch, securityContext);
    }

    @GET
    @Path("/rest/organizations/{organisation}/pipelines/{pipeline}/branches")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve all branches details for an organisation pipeline", response = GetMultibranchPipeline.class, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved all branches details", response = GetMultibranchPipeline.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = GetMultibranchPipeline.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = GetMultibranchPipeline.class) })
    public Response getPipelineBranchesByOrg(@ApiParam(value = "Name of the organisation",required=true) @PathParam("organisation") String organisation, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline) {
        return delegate.getPipelineBranchesByOrg(organisation, pipeline, securityContext);
    }

    @GET
    @Path("/rest/organizations/{organisation}/pipelines/{pipeline}")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve pipeline details for an organisation", response = SwaggyjenkinsPipeline.class, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = SwaggyjenkinsPipeline.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = SwaggyjenkinsPipeline.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = SwaggyjenkinsPipeline.class),
        @ApiResponse(code = 404, message = "Pipeline cannot be found on Jenkins instance", response = SwaggyjenkinsPipeline.class) })
    public Response getPipelineByOrg(@ApiParam(value = "Name of the organisation",required=true) @PathParam("organisation") String organisation, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline) {
        return delegate.getPipelineByOrg(organisation, pipeline, securityContext);
    }

    @GET
    @Path("/rest/organizations/{organisation}/pipelines/{folder}/")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve pipeline folder for an organisation", response = IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.class, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved folder details", response = IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.class) })
    public Response getPipelineFolderByOrg(@ApiParam(value = "Name of the organisation",required=true) @PathParam("organisation") String organisation, @ApiParam(value = "Name of the folder",required=true) @PathParam("folder") String folder) {
        return delegate.getPipelineFolderByOrg(organisation, folder, securityContext);
    }

    @GET
    @Path("/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline}")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve pipeline details for an organisation folder", response = IojenkinsblueoceanserviceembeddedrestPipelineImpl.class, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = IojenkinsblueoceanserviceembeddedrestPipelineImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = IojenkinsblueoceanserviceembeddedrestPipelineImpl.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = IojenkinsblueoceanserviceembeddedrestPipelineImpl.class) })
    public Response getPipelineFolderByOrg_1(@ApiParam(value = "Name of the organisation",required=true) @PathParam("organisation") String organisation, @ApiParam(value = "Name of the pipeline",required=true) @PathParam("pipeline") String pipeline, @ApiParam(value = "Name of the folder",required=true) @PathParam("folder") String folder) {
        return delegate.getPipelineFolderByOrg_1(organisation, pipeline, folder, securityContext);
    }

    @GET
    @Path("/rest/organizations/{organisation}/pipelines/")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve all pipelines details for an organisation", response = GetPipelines.class, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipelines details", response = GetPipelines.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = GetPipelines.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = GetPipelines.class) })
    public Response getPipelinesByOrg(@ApiParam(value = "Name of the organisation",required=true) @PathParam("organisation") String organisation) {
        return delegate.getPipelinesByOrg(organisation, securityContext);
    }

    @GET
    @Path("/rest/organizations/{organisation}/users/{user}")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve user details for an organisation", response = SwaggyjenkinsUser.class, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved users details", response = SwaggyjenkinsUser.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = SwaggyjenkinsUser.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = SwaggyjenkinsUser.class) })
    public Response getUser(@ApiParam(value = "Name of the organisation",required=true) @PathParam("organisation") String organisation, @ApiParam(value = "Name of the user",required=true) @PathParam("user") String user) {
        return delegate.getUser(organisation, user, securityContext);
    }

    @GET
    @Path("/rest/organizations/{organisation}/users/")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve users details for an organisation", response = SwaggyjenkinsUser.class, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved users details", response = SwaggyjenkinsUser.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = SwaggyjenkinsUser.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = SwaggyjenkinsUser.class) })
    public Response getUsers(@ApiParam(value = "Name of the organisation",required=true) @PathParam("organisation") String organisation) {
        return delegate.getUsers(organisation, securityContext);
    }

    @GET
    @Path("/rest/classes/")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Get classes details", response = String.class, tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved search result", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class) })
    public Response search( @NotNull @ApiParam(value = "Query string containing an array of class names",required=true)  @QueryParam("q") String q) {
        return delegate.search(q, securityContext);
    }

    @GET
    @Path("/rest/search/")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Search for any resource details", response = String.class, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved search result", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class) })
    public Response search_2( @NotNull @ApiParam(value = "Query string",required=true)  @QueryParam("q") String q) {
        return delegate.search_2(q, securityContext);
    }
}
