package org.openapitools.api;

import org.openapitools.model.Hudson;

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
@Path("/api/json")
@Api(description = "the api API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2025-05-10T02:40:32.828902557Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public class ApiApi {

    @GET
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve Jenkins details", response = Hudson.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved Jenkins details", response = Hudson.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getJenkins() {
        return Response.ok().entity("magic!").build();
    }

    @HEAD
    @ApiOperation(value = "", notes = "Retrieve Jenkins headers", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved Jenkins headers", response = Void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response headJenkins() {
        return Response.ok().entity("magic!").build();
    }
}
