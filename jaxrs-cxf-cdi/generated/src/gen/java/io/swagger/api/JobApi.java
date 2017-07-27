package io.swagger.api;

import io.swagger.model.HudsonmodelFreeStyleBuild;
import io.swagger.model.HudsonmodelFreeStyleProject;
import io.swagger.api.JobApiService;

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
@Path("/job")
@RequestScoped

@Api(description = "the job API")


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2017-07-25T10:45:05.448+10:00")

public class JobApi  {

  @Context SecurityContext securityContext;

  @Inject JobApiService delegate;


    @GET
    @Path("/{name}/api/json")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve job details", response = HudsonmodelFreeStyleProject.class, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job details", response = HudsonmodelFreeStyleProject.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = HudsonmodelFreeStyleProject.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = HudsonmodelFreeStyleProject.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = HudsonmodelFreeStyleProject.class) })
    public Response getJob(@ApiParam(value = "Name of the job",required=true) @PathParam("name") String name) {
        return delegate.getJob(name, securityContext);
    }

    @GET
    @Path("/{name}/config.xml")
    
    @Produces({ "text/xml" })
    @ApiOperation(value = "", notes = "Retrieve job configuration", response = String.class, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job configuration in config.xml format", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = String.class) })
    public Response getJobConfig(@ApiParam(value = "Name of the job",required=true) @PathParam("name") String name) {
        return delegate.getJobConfig(name, securityContext);
    }

    @GET
    @Path("/{name}/lastBuild/api/json")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve job's last build details", response = HudsonmodelFreeStyleBuild.class, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job's last build details", response = HudsonmodelFreeStyleBuild.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = HudsonmodelFreeStyleBuild.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = HudsonmodelFreeStyleBuild.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = HudsonmodelFreeStyleBuild.class) })
    public Response getJobLastBuild(@ApiParam(value = "Name of the job",required=true) @PathParam("name") String name) {
        return delegate.getJobLastBuild(name, securityContext);
    }

    @GET
    @Path("/{name}/{number}/logText/progressiveText")
    
    
    @ApiOperation(value = "", notes = "Retrieve job's build progressive text output", response = void.class, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job's build progressive text output", response = void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = void.class) })
    public Response getJobProgressiveText(@ApiParam(value = "Name of the job",required=true) @PathParam("name") String name, @ApiParam(value = "Build number",required=true) @PathParam("number") String number,  @NotNull @ApiParam(value = "Starting point of progressive text output",required=true)  @QueryParam("start") String start) {
        return delegate.getJobProgressiveText(name, number, start, securityContext);
    }

    @POST
    @Path("/{name}/build")
    
    
    @ApiOperation(value = "", notes = "Build a job", response = void.class, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully built the job (backward compatibility for older versions of Jenkins)", response = void.class),
        @ApiResponse(code = 201, message = "Successfully built the job", response = void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = void.class) })
    public Response postJobBuild(@ApiParam(value = "Name of the job",required=true) @PathParam("name") String name,  @NotNull @ApiParam(value = "",required=true)  @QueryParam("json") String json,  @ApiParam(value = "")  @QueryParam("token") String token, @ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb) {
        return delegate.postJobBuild(name, json, token, jenkinsCrumb, securityContext);
    }

    @POST
    @Path("/{name}/config.xml")
    
    @Produces({ "text/xml" })
    @ApiOperation(value = "", notes = "Update job configuration", response = void.class, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job configuration in config.xml format", response = void.class),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = void.class) })
    public Response postJobConfig(@ApiParam(value = "Name of the job",required=true) @PathParam("name") String name, @ApiParam(value = "Job configuration in config.xml format" ,required=true) String body, @ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb) {
        return delegate.postJobConfig(name, body, jenkinsCrumb, securityContext);
    }

    @POST
    @Path("/{name}/doDelete")
    
    
    @ApiOperation(value = "", notes = "Delete a job", response = void.class, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully deleted the job", response = void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = void.class) })
    public Response postJobDelete(@ApiParam(value = "Name of the job",required=true) @PathParam("name") String name, @ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb) {
        return delegate.postJobDelete(name, jenkinsCrumb, securityContext);
    }

    @POST
    @Path("/{name}/disable")
    
    
    @ApiOperation(value = "", notes = "Disable a job", response = void.class, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully disabled the job", response = void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = void.class) })
    public Response postJobDisable(@ApiParam(value = "Name of the job",required=true) @PathParam("name") String name, @ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb) {
        return delegate.postJobDisable(name, jenkinsCrumb, securityContext);
    }

    @POST
    @Path("/{name}/enable")
    
    
    @ApiOperation(value = "", notes = "Enable a job", response = void.class, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully enabled the job", response = void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = void.class) })
    public Response postJobEnable(@ApiParam(value = "Name of the job",required=true) @PathParam("name") String name, @ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb) {
        return delegate.postJobEnable(name, jenkinsCrumb, securityContext);
    }

    @POST
    @Path("/{name}/lastBuild/stop")
    
    
    @ApiOperation(value = "", notes = "Stop a job", response = void.class, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully stopped the job", response = void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = void.class) })
    public Response postJobLastBuildStop(@ApiParam(value = "Name of the job",required=true) @PathParam("name") String name, @ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb) {
        return delegate.postJobLastBuildStop(name, jenkinsCrumb, securityContext);
    }
}
