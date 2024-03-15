package org.openapitools.api;


import javax.ws.rs.*;
import javax.ws.rs.core.Response;

import io.swagger.annotations.*;

import java.io.InputStream;
import java.util.Map;
import java.util.List;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
* Represents a collection of functions to interact with the API endpoints.
*/
@Path("/jwt-auth")
@Api(description = "the jwt-auth API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2024-03-15T14:15:46.626169068Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class JwtAuthApi {

    @GET
    @Path("/jwks/{key}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve JSON Web Key", response = String.class, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved JWT token", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getJsonWebKey(@PathParam("key") @ApiParam("Key ID received as part of JWT header field kid") Integer key) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/token")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve JSON Web Token", response = String.class, tags={ "blueOcean" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved JWT token", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getJsonWebToken(@QueryParam("expiryTimeInMins")  @ApiParam("Token expiry time in minutes, default: 30 minutes")  Integer expiryTimeInMins,@QueryParam("maxExpiryTimeInMins")  @ApiParam("Maximum token expiry time in minutes, default: 480 minutes")  Integer maxExpiryTimeInMins) {
        return Response.ok().entity("magic!").build();
    }
}
