package org.openapitools.api;

import org.openapitools.model.*;
import org.openapitools.api.CrumbIssuerApiService;
import org.openapitools.api.factories.CrumbIssuerApiServiceFactory;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;

import org.openapitools.model.DefaultCrumbIssuer;

import java.util.Map;
import java.util.List;
import org.openapitools.api.NotFoundException;

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
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2018-08-21T04:39:03.702Z[GMT]")
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
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getCrumb(@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getCrumb(securityContext);
    }
}
