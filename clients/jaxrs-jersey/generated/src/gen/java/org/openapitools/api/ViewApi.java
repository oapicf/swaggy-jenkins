package org.openapitools.api;

import org.openapitools.api.ViewApiService;
import org.openapitools.api.factories.ViewApiServiceFactory;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;

import org.openapitools.model.ListView;

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

@Path("/view/{name}")


@io.swagger.annotations.Api(description = "the view API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2024-03-15T14:14:47.059425590Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class ViewApi  {
   private final ViewApiService delegate;

   public ViewApi(@Context ServletConfig servletContext) {
      ViewApiService delegate = null;

      if (servletContext != null) {
         String implClass = servletContext.getInitParameter("ViewApi.implementation");
         if (implClass != null && !"".equals(implClass.trim())) {
            try {
               delegate = (ViewApiService) Class.forName(implClass).newInstance();
            } catch (Exception e) {
               throw new RuntimeException(e);
            }
         }
      }

      if (delegate == null) {
         delegate = ViewApiServiceFactory.getViewApi();
      }

      this.delegate = delegate;
   }

    @javax.ws.rs.GET
    @Path("/api/json")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve view details", response = ListView.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = {
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved view details", response = ListView.class),
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 404, message = "View cannot be found on Jenkins instance", response = Void.class)
    })
    public Response getView(@ApiParam(value = "Name of the view", required = true) @PathParam("name") @NotNull  String name,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getView(name, securityContext);
    }
    @javax.ws.rs.GET
    @Path("/config.xml")
    
    @Produces({ "text/xml" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve view configuration", response = String.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = {
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved view configuration in config.xml format", response = String.class),
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 404, message = "View cannot be found on Jenkins instance", response = Void.class)
    })
    public Response getViewConfig(@ApiParam(value = "Name of the view", required = true) @PathParam("name") @NotNull  String name,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getViewConfig(name, securityContext);
    }
    @javax.ws.rs.POST
    @Path("/config.xml")
    @Consumes({ "application/json" })
    @Produces({ "*/*" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Update view configuration", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = {
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully updated view configuration", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 404, message = "View cannot be found on Jenkins instance", response = Void.class)
    })
    public Response postViewConfig(@ApiParam(value = "Name of the view", required = true) @PathParam("name") @NotNull  String name,@ApiParam(value = "View configuration in config.xml format", required = true) @NotNull  String body,@ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.postViewConfig(name, body, jenkinsCrumb, securityContext);
    }
}
