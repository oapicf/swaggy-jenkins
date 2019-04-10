package org.openapitools.api;

import org.openapitools.model.*;
import org.openapitools.api.JwtAuthApiService;
import org.openapitools.api.factories.JwtAuthApiServiceFactory;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;


import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import org.wso2.msf4j.formparam.FormDataParam;
import org.wso2.msf4j.formparam.FileInfo;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;

@Path("/jwt-auth")


@io.swagger.annotations.Api(description = "the jwt-auth API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2019-04-10T03:54:11.067Z[GMT]")
public class JwtAuthApi  {
   private final JwtAuthApiService delegate = JwtAuthApiServiceFactory.getJwtAuthApi();

    @GET
    @Path("/jwks/{key}")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve JSON Web Key", response = String.class, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved JWT token", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class) })
    public Response getJsonWebKey(@ApiParam(value = "Key ID received as part of JWT header field kid",required=true) @PathParam("key") Integer key
)
    throws NotFoundException {
        return delegate.getJsonWebKey(key);
    }
    @GET
    @Path("/token")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve JSON Web Token", response = String.class, tags={ "blueOcean", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved JWT token", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class) })
    public Response getJsonWebToken(@ApiParam(value = "Token expiry time in minutes, default: 30 minutes") @QueryParam("expiryTimeInMins") Integer expiryTimeInMins
,@ApiParam(value = "Maximum token expiry time in minutes, default: 480 minutes") @QueryParam("maxExpiryTimeInMins") Integer maxExpiryTimeInMins
)
    throws NotFoundException {
        return delegate.getJsonWebToken(expiryTimeInMins,maxExpiryTimeInMins);
    }
}
