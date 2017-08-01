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

import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import javax.ws.rs.*;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.MediaType;
import org.apache.cxf.jaxrs.ext.multipart.*;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponses;
import io.swagger.annotations.ApiResponse;
import io.swagger.jaxrs.PATCH;
import javax.validation.constraints.*;
import javax.validation.Valid;

@Path("/")
@Api(value = "/", description = "")
public interface BlueOceanApi  {

    @GET
    @Path("/blue/rest/organizations/{organisation}/user/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved authenticated user details", response = SwaggyjenkinsUser.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    public SwaggyjenkinsUser getAuthenticatedUser(@PathParam("organisation") String organisation);

    @GET
    @Path("/blue/rest/classes/{class}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved class names", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    public String getClasses(@PathParam("class") String propertyClass);

    @GET
    @Path("/blue/rest/organizations/{organisation}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = SwaggyjenkinsOrganisation.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Pipeline cannot be found on Jenkins instance") })
    public SwaggyjenkinsOrganisation getOrganisation(@PathParam("organisation") String organisation);

    @GET
    @Path("/blue/rest/organizations/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipelines details", response = GetOrganisations.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    public GetOrganisations getOrganisations();

    @GET
    @Path("/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved branch details", response = IojenkinsblueoceanrestimplpipelineBranchImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    public IojenkinsblueoceanrestimplpipelineBranchImpl getPipelineBranchByOrg(@PathParam("organisation") String organisation, @PathParam("pipeline") String pipeline, @PathParam("branch") String branch);

    @GET
    @Path("/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved all branches details", response = GetMultibranchPipeline.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    public GetMultibranchPipeline getPipelineBranchesByOrg(@PathParam("organisation") String organisation, @PathParam("pipeline") String pipeline);

    @GET
    @Path("/blue/rest/organizations/{organisation}/pipelines/{pipeline}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = SwaggyjenkinsPipeline.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Pipeline cannot be found on Jenkins instance") })
    public SwaggyjenkinsPipeline getPipelineByOrg(@PathParam("organisation") String organisation, @PathParam("pipeline") String pipeline);

    @GET
    @Path("/blue/rest/organizations/{organisation}/pipelines/{folder}/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved folder details", response = IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    public IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl getPipelineFolderByOrg(@PathParam("organisation") String organisation, @PathParam("folder") String folder);

    @GET
    @Path("/blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = IojenkinsblueoceanserviceembeddedrestPipelineImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    public IojenkinsblueoceanserviceembeddedrestPipelineImpl getPipelineFolderByOrg_1(@PathParam("organisation") String organisation, @PathParam("pipeline") String pipeline, @PathParam("folder") String folder);

    @GET
    @Path("/blue/rest/organizations/{organisation}/pipelines/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipelines details", response = GetPipelines.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    public GetPipelines getPipelinesByOrg(@PathParam("organisation") String organisation);

    @GET
    @Path("/blue/rest/organizations/{organisation}/users/{user}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved users details", response = SwaggyjenkinsUser.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    public SwaggyjenkinsUser getUser(@PathParam("organisation") String organisation, @PathParam("user") String user);

    @GET
    @Path("/blue/rest/organizations/{organisation}/users/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved users details", response = SwaggyjenkinsUser.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    public SwaggyjenkinsUser getUsers(@PathParam("organisation") String organisation);

    @GET
    @Path("/blue/rest/classes/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "blueOcean",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved search result", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    public String search(@QueryParam("q") @NotNull String q);

    @GET
    @Path("/blue/rest/search/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved search result", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    public String search_2(@QueryParam("q") @NotNull String q);
}

