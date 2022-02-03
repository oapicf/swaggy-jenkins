package org.openapitools.api;

import org.openapitools.model.*;
import org.openapitools.api.JobApiService;
import org.openapitools.api.factories.JobApiServiceFactory;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;

import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProject;

import java.util.Map;
import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import org.glassfish.jersey.media.multipart.FormDataParam;
import org.glassfish.jersey.media.multipart.FormDataBodyPart;

import javax.servlet.ServletConfig;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;
import javax.validation.constraints.*;
import javax.validation.Valid;

@Path("/job/{name}")


@io.swagger.annotations.Api(description = "the job API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2022-02-02T10:45:25.136812Z[Etc/UTC]")
public class JobApi  {
   private final JobApiService delegate;

   public JobApi(@Context ServletConfig servletContext) {
      JobApiService delegate = null;

      if (servletContext != null) {
         String implClass = servletContext.getInitParameter("JobApi.implementation");
         if (implClass != null && !"".equals(implClass.trim())) {
            try {
               delegate = (JobApiService) Class.forName(implClass).newInstance();
            } catch (Exception e) {
               throw new RuntimeException(e);
            }
         }
      }

      if (delegate == null) {
         delegate = JobApiServiceFactory.getJobApi();
      }

      this.delegate = delegate;
   }

    @GET
    @Path("/api/json")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve job details", response = FreeStyleProject.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = {
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved job details", response = FreeStyleProject.class),
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class)
    })
    public Response getJob(@ApiParam(value = "Name of the job", required = true) @PathParam("name") @NotNull  String name,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getJob(name, securityContext);
    }
    @GET
    @Path("/config.xml")
    
    @Produces({ "text/xml" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve job configuration", response = String.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = {
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved job configuration in config.xml format", response = String.class),
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class)
    })
    public Response getJobConfig(@ApiParam(value = "Name of the job", required = true) @PathParam("name") @NotNull  String name,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getJobConfig(name, securityContext);
    }
    @GET
    @Path("/lastBuild/api/json")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve job's last build details", response = FreeStyleBuild.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = {
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved job's last build details", response = FreeStyleBuild.class),
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class)
    })
    public Response getJobLastBuild(@ApiParam(value = "Name of the job", required = true) @PathParam("name") @NotNull  String name,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getJobLastBuild(name, securityContext);
    }
    @GET
    @Path("/{number}/logText/progressiveText")
    
    
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve job's build progressive text output", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = {
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved job's build progressive text output", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class)
    })
    public Response getJobProgressiveText(@ApiParam(value = "Name of the job", required = true) @PathParam("name") @NotNull  String name,@ApiParam(value = "Build number", required = true) @PathParam("number") @NotNull  String number,@ApiParam(value = "Starting point of progressive text output", required = true) @QueryParam("start") @NotNull  String start,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getJobProgressiveText(name, number, start, securityContext);
    }
    @POST
    @Path("/build")
    
    
    @io.swagger.annotations.ApiOperation(value = "", notes = "Build a job", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = {
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully built the job (backward compatibility for older versions of Jenkins)", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 201, message = "Successfully built the job", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class)
    })
    public Response postJobBuild(@ApiParam(value = "Name of the job", required = true) @PathParam("name") @NotNull  String name,@ApiParam(value = "", required = true) @QueryParam("json") @NotNull  String json,@ApiParam(value = "") @QueryParam("token")  String token,@ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.postJobBuild(name, json, token, jenkinsCrumb, securityContext);
    }
    @POST
    @Path("/config.xml")
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
        @io.swagger.annotations.ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class)
    })
    public Response postJobConfig(@ApiParam(value = "Name of the job", required = true) @PathParam("name") @NotNull  String name,@ApiParam(value = "Job configuration in config.xml format", required = true) @NotNull  String body,@ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.postJobConfig(name, body, jenkinsCrumb, securityContext);
    }
    @POST
    @Path("/doDelete")
    
    
    @io.swagger.annotations.ApiOperation(value = "", notes = "Delete a job", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = {
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully deleted the job", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class)
    })
    public Response postJobDelete(@ApiParam(value = "Name of the job", required = true) @PathParam("name") @NotNull  String name,@ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.postJobDelete(name, jenkinsCrumb, securityContext);
    }
    @POST
    @Path("/disable")
    
    
    @io.swagger.annotations.ApiOperation(value = "", notes = "Disable a job", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = {
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully disabled the job", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class)
    })
    public Response postJobDisable(@ApiParam(value = "Name of the job", required = true) @PathParam("name") @NotNull  String name,@ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.postJobDisable(name, jenkinsCrumb, securityContext);
    }
    @POST
    @Path("/enable")
    
    
    @io.swagger.annotations.ApiOperation(value = "", notes = "Enable a job", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = {
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully enabled the job", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class)
    })
    public Response postJobEnable(@ApiParam(value = "Name of the job", required = true) @PathParam("name") @NotNull  String name,@ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.postJobEnable(name, jenkinsCrumb, securityContext);
    }
    @POST
    @Path("/lastBuild/stop")
    
    
    @io.swagger.annotations.ApiOperation(value = "", notes = "Stop a job", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = {
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully stopped the job", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class)
    })
    public Response postJobLastBuildStop(@ApiParam(value = "Name of the job", required = true) @PathParam("name") @NotNull  String name,@ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.postJobLastBuildStop(name, jenkinsCrumb, securityContext);
    }
}
