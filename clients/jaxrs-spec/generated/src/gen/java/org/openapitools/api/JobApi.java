package org.openapitools.api;

import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProject;

import javax.ws.rs.*;
import javax.ws.rs.core.Response;

import io.swagger.annotations.*;

import java.io.InputStream;
import java.util.Map;
import java.util.List;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
* Represents a collection of functions to interact with the API endpoints.
*/
@Path("/job/{name}")
@Api(description = "the job API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2025-04-27T08:09:45.633008592Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public class JobApi {

    @GET
    @Path("/api/json")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve job details", response = FreeStyleProject.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job details", response = FreeStyleProject.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class)
    })
    public Response getJob(@PathParam("name") @ApiParam("Name of the job") String name) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/config.xml")
    @Produces({ "text/xml" })
    @ApiOperation(value = "", notes = "Retrieve job configuration", response = String.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job configuration in config.xml format", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class)
    })
    public Response getJobConfig(@PathParam("name") @ApiParam("Name of the job") String name) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/lastBuild/api/json")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve job's last build details", response = FreeStyleBuild.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job's last build details", response = FreeStyleBuild.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class)
    })
    public Response getJobLastBuild(@PathParam("name") @ApiParam("Name of the job") String name) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/{number}/logText/progressiveText")
    @ApiOperation(value = "", notes = "Retrieve job's build progressive text output", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job's build progressive text output", response = Void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class)
    })
    public Response getJobProgressiveText(@PathParam("name") @ApiParam("Name of the job") String name,@PathParam("number") @ApiParam("Build number") String number,@QueryParam("start") @NotNull  @ApiParam("Starting point of progressive text output")  String start) {
        return Response.ok().entity("magic!").build();
    }

    @POST
    @Path("/build")
    @ApiOperation(value = "", notes = "Build a job", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully built the job (backward compatibility for older versions of Jenkins)", response = Void.class),
        @ApiResponse(code = 201, message = "Successfully built the job", response = Void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class)
    })
    public Response postJobBuild(@PathParam("name") @ApiParam("Name of the job") String name,@QueryParam("json") @NotNull   String json,@QueryParam("token")   String token,@HeaderParam("Jenkins-Crumb")   @ApiParam("CSRF protection token") String jenkinsCrumb) {
        return Response.ok().entity("magic!").build();
    }

    @POST
    @Path("/config.xml")
    @Consumes({ "application/json" })
    @Produces({ "*/*" })
    @ApiOperation(value = "", notes = "Update job configuration", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job configuration in config.xml format", response = Void.class),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class)
    })
    public Response postJobConfig(@PathParam("name") @ApiParam("Name of the job") String name,@Valid @NotNull String body,@HeaderParam("Jenkins-Crumb")   @ApiParam("CSRF protection token") String jenkinsCrumb) {
        return Response.ok().entity("magic!").build();
    }

    @POST
    @Path("/doDelete")
    @ApiOperation(value = "", notes = "Delete a job", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully deleted the job", response = Void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class)
    })
    public Response postJobDelete(@PathParam("name") @ApiParam("Name of the job") String name,@HeaderParam("Jenkins-Crumb")   @ApiParam("CSRF protection token") String jenkinsCrumb) {
        return Response.ok().entity("magic!").build();
    }

    @POST
    @Path("/disable")
    @ApiOperation(value = "", notes = "Disable a job", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully disabled the job", response = Void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class)
    })
    public Response postJobDisable(@PathParam("name") @ApiParam("Name of the job") String name,@HeaderParam("Jenkins-Crumb")   @ApiParam("CSRF protection token") String jenkinsCrumb) {
        return Response.ok().entity("magic!").build();
    }

    @POST
    @Path("/enable")
    @ApiOperation(value = "", notes = "Enable a job", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully enabled the job", response = Void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class)
    })
    public Response postJobEnable(@PathParam("name") @ApiParam("Name of the job") String name,@HeaderParam("Jenkins-Crumb")   @ApiParam("CSRF protection token") String jenkinsCrumb) {
        return Response.ok().entity("magic!").build();
    }

    @POST
    @Path("/lastBuild/stop")
    @ApiOperation(value = "", notes = "Stop a job", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully stopped the job", response = Void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class)
    })
    public Response postJobLastBuildStop(@PathParam("name") @ApiParam("Name of the job") String name,@HeaderParam("Jenkins-Crumb")   @ApiParam("CSRF protection token") String jenkinsCrumb) {
        return Response.ok().entity("magic!").build();
    }
}
