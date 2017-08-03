package io.swagger.api;

import io.swagger.model.FreeStyleBuild;
import io.swagger.model.FreeStyleProject;

import javax.ws.rs.*;
import javax.ws.rs.core.Response;

import io.swagger.annotations.*;

import java.util.List;
import javax.validation.constraints.*;

@Path("/job")

@Api(description = "the job API")


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2017-08-03T23:35:03.699Z")


public class JobApi  {

    @GET
    @Path("/{name}/api/json")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve job details", response = FreeStyleProject.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job details", response = FreeStyleProject.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = FreeStyleProject.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = FreeStyleProject.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = FreeStyleProject.class) })
    public Response getJob(@PathParam("name") @ApiParam("Name of the job") String name) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/{name}/config.xml")
    
    @Produces({ "text/xml" })
    @ApiOperation(value = "", notes = "Retrieve job configuration", response = String.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job configuration in config.xml format", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = String.class) })
    public Response getJobConfig(@PathParam("name") @ApiParam("Name of the job") String name) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/{name}/lastBuild/api/json")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve job's last build details", response = FreeStyleBuild.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job's last build details", response = FreeStyleBuild.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = FreeStyleBuild.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = FreeStyleBuild.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = FreeStyleBuild.class) })
    public Response getJobLastBuild(@PathParam("name") @ApiParam("Name of the job") String name) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/{name}/{number}/logText/progressiveText")
    
    
    @ApiOperation(value = "", notes = "Retrieve job's build progressive text output", response = void.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job's build progressive text output", response = void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = void.class) })
    public Response getJobProgressiveText(@PathParam("name") @ApiParam("Name of the job") String name,@PathParam("number") @ApiParam("Build number") String number,@QueryParam("start") @NotNull  String start) {
        return Response.ok().entity("magic!").build();
    }

    @POST
    @Path("/{name}/build")
    
    
    @ApiOperation(value = "", notes = "Build a job", response = void.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully built the job (backward compatibility for older versions of Jenkins)", response = void.class),
        @ApiResponse(code = 201, message = "Successfully built the job", response = void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = void.class) })
    public Response postJobBuild(@PathParam("name") @ApiParam("Name of the job") String name,@QueryParam("json") @NotNull  String json,@QueryParam("token")  String token,@HeaderParam("Jenkins-Crumb") String jenkinsCrumb) {
        return Response.ok().entity("magic!").build();
    }

    @POST
    @Path("/{name}/config.xml")
    
    @Produces({ "text/xml" })
    @ApiOperation(value = "", notes = "Update job configuration", response = void.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job configuration in config.xml format", response = void.class),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = void.class) })
    public Response postJobConfig(@PathParam("name") @ApiParam("Name of the job") String name,String body,@HeaderParam("Jenkins-Crumb") String jenkinsCrumb) {
        return Response.ok().entity("magic!").build();
    }

    @POST
    @Path("/{name}/doDelete")
    
    
    @ApiOperation(value = "", notes = "Delete a job", response = void.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully deleted the job", response = void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = void.class) })
    public Response postJobDelete(@PathParam("name") @ApiParam("Name of the job") String name,@HeaderParam("Jenkins-Crumb") String jenkinsCrumb) {
        return Response.ok().entity("magic!").build();
    }

    @POST
    @Path("/{name}/disable")
    
    
    @ApiOperation(value = "", notes = "Disable a job", response = void.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully disabled the job", response = void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = void.class) })
    public Response postJobDisable(@PathParam("name") @ApiParam("Name of the job") String name,@HeaderParam("Jenkins-Crumb") String jenkinsCrumb) {
        return Response.ok().entity("magic!").build();
    }

    @POST
    @Path("/{name}/enable")
    
    
    @ApiOperation(value = "", notes = "Enable a job", response = void.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully enabled the job", response = void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = void.class) })
    public Response postJobEnable(@PathParam("name") @ApiParam("Name of the job") String name,@HeaderParam("Jenkins-Crumb") String jenkinsCrumb) {
        return Response.ok().entity("magic!").build();
    }

    @POST
    @Path("/{name}/lastBuild/stop")
    
    
    @ApiOperation(value = "", notes = "Stop a job", response = void.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully stopped the job", response = void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = void.class) })
    public Response postJobLastBuildStop(@PathParam("name") @ApiParam("Name of the job") String name,@HeaderParam("Jenkins-Crumb") String jenkinsCrumb) {
        return Response.ok().entity("magic!").build();
    }
}

