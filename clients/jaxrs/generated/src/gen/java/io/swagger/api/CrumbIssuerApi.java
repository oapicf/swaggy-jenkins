package io.swagger.api;

import io.swagger.model.*;
import io.swagger.api.CrumbIssuerApiService;
import io.swagger.api.factories.CrumbIssuerApiServiceFactory;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;

import io.swagger.model.DefaultCrumbIssuer;

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

@Path("/crumbIssuer")


@io.swagger.annotations.Api(description = "the crumbIssuer API")
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJerseyServerCodegen", date = "2017-08-03T23:34:37.174Z")
public class CrumbIssuerApi  {
   private final CrumbIssuerApiService delegate;

   public CrumbIssuerApi(@Context ServletConfig servletContext) {
      CrumbIssuerApiService delegate = null;

      if (servletContext != null) {
         String implClass = servletContext.getInitParameter("CrumbIssuerApi.implementation");
         if (implClass != null && !"".equals(implClass.trim())) {
            try {
               delegate = (CrumbIssuerApiService) Class.forName(implClass).newInstance();
            } catch (Exception e) {
               throw new RuntimeException(e);
            }
         } 
      }

      if (delegate == null) {
         delegate = CrumbIssuerApiServiceFactory.getCrumbIssuerApi();
      }

      this.delegate = delegate;
   }

    @GET
    @Path("/api/json")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve CSRF protection token", response = DefaultCrumbIssuer.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved CSRF protection token", response = DefaultCrumbIssuer.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = DefaultCrumbIssuer.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = DefaultCrumbIssuer.class) })
    public Response getCrumb(@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getCrumb(securityContext);
    }
}
