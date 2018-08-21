package org.openapitools.api;

import org.openapitools.model.*;
import org.openapitools.api.JwtAuthApiService;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;


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

@Path("/jwt-auth")


@io.swagger.annotations.Api(description = "the jwt-auth API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2018-08-21T02:12:32.019Z[GMT]")
public class JwtAuthApi  {

    @Inject JwtAuthApiService service;

    @GET
    @Path("/jwks/{key}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve JSON Web Key", response = String.class, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved JWT token", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getJsonWebKey( @PathParam("key") Integer key,@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.getJsonWebKey(key,securityContext);
    }
    @GET
    @Path("/token")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve JSON Web Token", response = String.class, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved JWT token", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getJsonWebToken(  @QueryParam("expiryTimeInMins") Integer expiryTimeInMins,  @QueryParam("maxExpiryTimeInMins") Integer maxExpiryTimeInMins,@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.getJsonWebToken(expiryTimeInMins,maxExpiryTimeInMins,securityContext);
    }
}
