package io.swagger.api;

import io.swagger.model.*;
import io.swagger.api.ApiApiService;
import io.swagger.api.factories.ApiApiServiceFactory;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;

import io.swagger.model.Hudson;

import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataParam;

import javax.servlet.ServletConfig;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;
import javax.validation.constraints.*;

@Path("/api")


@io.swagger.annotations.Api(description = "the api API")
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJerseyServerCodegen", date = "2017-08-03T23:34:37.174Z")
public class ApiApi  {
   private final ApiApiService delegate;

   public ApiApi(@Context ServletConfig servletContext) {
      ApiApiService delegate = null;

      if (servletContext != null) {
         String implClass = servletContext.getInitParameter("ApiApi.implementation");
         if (implClass != null && !"".equals(implClass.trim())) {
            try {
               delegate = (ApiApiService) Class.forName(implClass).newInstance();
            } catch (Exception e) {
               throw new RuntimeException(e);
            }
         } 
      }

      if (delegate == null) {
         delegate = ApiApiServiceFactory.getApiApi();
      }

      this.delegate = delegate;
   }

    @GET
    @Path("/json")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve Jenkins details", response = Hudson.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved Jenkins details", response = Hudson.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Hudson.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Hudson.class) })
    public Response getJenkins(@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getJenkins(securityContext);
    }
    @HEAD
    @Path("/json")
    
    
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve Jenkins headers", response = void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved Jenkins headers", response = void.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class) })
    public Response headJenkins(@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.headJenkins(securityContext);
    }
}
