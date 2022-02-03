package org.openapitools.api;

import org.openapitools.model.*;
import org.openapitools.api.JwtAuthApiService;
import org.openapitools.api.factories.JwtAuthApiServiceFactory;

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

@Path("/jwt-auth")


@io.swagger.annotations.Api(description = "the jwt-auth API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2022-02-02T10:45:25.136812Z[Etc/UTC]")
public class JwtAuthApi  {
   private final JwtAuthApiService delegate;

   public JwtAuthApi(@Context ServletConfig servletContext) {
      JwtAuthApiService delegate = null;

      if (servletContext != null) {
         String implClass = servletContext.getInitParameter("JwtAuthApi.implementation");
         if (implClass != null && !"".equals(implClass.trim())) {
            try {
               delegate = (JwtAuthApiService) Class.forName(implClass).newInstance();
            } catch (Exception e) {
               throw new RuntimeException(e);
            }
         }
      }

      if (delegate == null) {
         delegate = JwtAuthApiServiceFactory.getJwtAuthApi();
      }

      this.delegate = delegate;
   }

    @GET
    @Path("/jwks/{key}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve JSON Web Key", response = String.class, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = {
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved JWT token", response = String.class),
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getJsonWebKey(@ApiParam(value = "Key ID received as part of JWT header field kid", required = true) @PathParam("key") @NotNull  Integer key,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getJsonWebKey(key, securityContext);
    }
    @GET
    @Path("/token")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve JSON Web Token", response = String.class, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = {
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved JWT token", response = String.class),
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getJsonWebToken(@ApiParam(value = "Token expiry time in minutes, default: 30 minutes") @QueryParam("expiryTimeInMins")  Integer expiryTimeInMins,@ApiParam(value = "Maximum token expiry time in minutes, default: 480 minutes") @QueryParam("maxExpiryTimeInMins")  Integer maxExpiryTimeInMins,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins, securityContext);
    }
}
