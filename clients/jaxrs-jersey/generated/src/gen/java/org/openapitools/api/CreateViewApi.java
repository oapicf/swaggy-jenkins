package org.openapitools.api;

import org.openapitools.model.*;
import org.openapitools.api.CreateViewApiService;
import org.openapitools.api.factories.CreateViewApiServiceFactory;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;


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

@Path("/createView")


@io.swagger.annotations.Api(description = "the createView API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2022-02-02T10:45:25.136812Z[Etc/UTC]")
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
    
    @Consumes({ "application/json" })
    @Produces({ "*/*" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Create a new view using view configuration", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = {
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully created the view", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response postCreateView(@ApiParam(value = "Name of the new view", required = true) @QueryParam("name") @NotNull  String name,@ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb,@ApiParam(value = "Content type header application/xml" )@HeaderParam("Content-Type") String contentType,@ApiParam(value = "View configuration in config.xml format")  String body,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.postCreateView(name, jenkinsCrumb, contentType, body, securityContext);
    }
}
