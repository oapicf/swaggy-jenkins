package org.openapitools.api;

import org.openapitools.api.JwtAuthApiService;

import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;

import io.swagger.annotations.*;
import java.io.InputStream;

import org.apache.cxf.jaxrs.ext.PATCH;
import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;

import java.util.Map;
import java.util.List;
import javax.validation.constraints.*;
@Path("/jwt-auth")
@RequestScoped

@Api(description = "the jwt-auth API")


@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2022-02-11T12:43:06.166399Z[Etc/UTC]")

public class JwtAuthApi  {

  @Context SecurityContext securityContext;

  @Inject JwtAuthApiService delegate;


    @GET
    @Path("/jwks/{key}")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve JSON Web Key", response = String.class, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved JWT token", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getJsonWebKey(@ApiParam(value = "Key ID received as part of JWT header field kid",required=true) @PathParam("key") Integer key) {
        return delegate.getJsonWebKey(key, securityContext);
    }

    @GET
    @Path("/token")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve JSON Web Token", response = String.class, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved JWT token", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getJsonWebToken(@ApiParam(value = "Token expiry time in minutes, default: 30 minutes")  @QueryParam("expiryTimeInMins") Integer expiryTimeInMins, @ApiParam(value = "Maximum token expiry time in minutes, default: 480 minutes")  @QueryParam("maxExpiryTimeInMins") Integer maxExpiryTimeInMins) {
        return delegate.getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins, securityContext);
    }
}
