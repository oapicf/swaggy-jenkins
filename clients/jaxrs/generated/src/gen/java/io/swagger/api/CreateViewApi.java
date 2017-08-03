package io.swagger.api;

import io.swagger.model.*;
import io.swagger.api.CreateViewApiService;
import io.swagger.api.factories.CreateViewApiServiceFactory;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;


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

@Path("/createView")


@io.swagger.annotations.Api(description = "the createView API")
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJerseyServerCodegen", date = "2017-08-03T23:34:37.174Z")
public class CreateViewApi  {
   private final CreateViewApiService delegate;

   public CreateViewApi(@Context ServletConfig servletContext) {
      CreateViewApiService delegate = null;

      if (servletContext != null) {
         String implClass = servletContext.getInitParameter("CreateViewApi.implementation");
         if (implClass != null && !"".equals(implClass.trim())) {
            try {
               delegate = (CreateViewApiService) Class.forName(implClass).newInstance();
            } catch (Exception e) {
               throw new RuntimeException(e);
            }
         } 
      }

      if (delegate == null) {
         delegate = CreateViewApiServiceFactory.getCreateViewApi();
      }

      this.delegate = delegate;
   }

    @POST
    
    
    @Produces({ "text/html" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Create a new view using view configuration", response = void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully created the view", response = void.class),
        
        @io.swagger.annotations.ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = void.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class) })
    public Response postCreateView(@ApiParam(value = "Name of the new view",required=true) @QueryParam("name") String name
,@ApiParam(value = "View configuration in config.xml format" ) String body
,@ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb
,@ApiParam(value = "Content type header application/xml" )@HeaderParam("Content-Type") String contentType
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.postCreateView(name,body,jenkinsCrumb,contentType,securityContext);
    }
}
