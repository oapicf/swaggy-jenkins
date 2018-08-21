package org.openapitools.api;

import org.openapitools.model.*;
import org.openapitools.api.JobApiService;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;

import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProject;

import java.util.Map;
import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;
import javax.inject.Inject;

import javax.validation.constraints.*;

@Path("/job")


@io.swagger.annotations.Api(description = "the job API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2018-08-21T04:39:10.881Z[GMT]")
public class JobApi  {

    @Inject JobApiService service;

    @GET
    @Path("/{name}/api/json")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve job details", response = FreeStyleProject.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved job details", response = FreeStyleProject.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class) })
    public Response getJob( @PathParam("name") String name,@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.getJob(name,securityContext);
    }
    @GET
    @Path("/{name}/config.xml")
    
    @Produces({ "text/xml" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve job configuration", response = String.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved job configuration in config.xml format", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class) })
    public Response getJobConfig( @PathParam("name") String name,@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.getJobConfig(name,securityContext);
    }
    @GET
    @Path("/{name}/lastBuild/api/json")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve job's last build details", response = FreeStyleBuild.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved job's last build details", response = FreeStyleBuild.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class) })
    public Response getJobLastBuild( @PathParam("name") String name,@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.getJobLastBuild(name,securityContext);
    }
    @GET
    @Path("/{name}/{number}/logText/progressiveText")
    
    
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve job's build progressive text output", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved job's build progressive text output", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class) })
    public Response getJobProgressiveText( @PathParam("name") String name, @PathParam("number") String number, @NotNull  @QueryParam("start") String start,@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.getJobProgressiveText(name,number,start,securityContext);
    }
    @POST
    @Path("/{name}/build")
    
    
    @io.swagger.annotations.ApiOperation(value = "", notes = "Build a job", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully built the job (backward compatibility for older versions of Jenkins)", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 201, message = "Successfully built the job", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class) })
    public Response postJobBuild( @PathParam("name") String name, @NotNull  @QueryParam("json") String json,  @QueryParam("token") String token,@ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb,@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.postJobBuild(name,json,token,jenkinsCrumb,securityContext);
    }
    @POST
    @Path("/{name}/config.xml")
    @Consumes({ "application/json" })
    @Produces({ "*/*" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Update job configuration", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved job configuration in config.xml format", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class) })
    public Response postJobConfig( @PathParam("name") String name,@ApiParam(value = "Job configuration in config.xml format" ,required=true) String body,@ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb,@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.postJobConfig(name,body,jenkinsCrumb,securityContext);
    }
    @POST
    @Path("/{name}/doDelete")
    
    
    @io.swagger.annotations.ApiOperation(value = "", notes = "Delete a job", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully deleted the job", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class) })
    public Response postJobDelete( @PathParam("name") String name,@ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb,@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.postJobDelete(name,jenkinsCrumb,securityContext);
    }
    @POST
    @Path("/{name}/disable")
    
    
    @io.swagger.annotations.ApiOperation(value = "", notes = "Disable a job", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully disabled the job", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class) })
    public Response postJobDisable( @PathParam("name") String name,@ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb,@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.postJobDisable(name,jenkinsCrumb,securityContext);
    }
    @POST
    @Path("/{name}/enable")
    
    
    @io.swagger.annotations.ApiOperation(value = "", notes = "Enable a job", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully enabled the job", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class) })
    public Response postJobEnable( @PathParam("name") String name,@ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb,@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.postJobEnable(name,jenkinsCrumb,securityContext);
    }
    @POST
    @Path("/{name}/lastBuild/stop")
    
    
    @io.swagger.annotations.ApiOperation(value = "", notes = "Stop a job", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully stopped the job", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class) })
    public Response postJobLastBuildStop( @PathParam("name") String name,@ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb,@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.postJobLastBuildStop(name,jenkinsCrumb,securityContext);
    }
}
