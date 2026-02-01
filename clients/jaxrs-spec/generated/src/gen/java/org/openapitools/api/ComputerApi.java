package org.openapitools.api;

import org.openapitools.model.ComputerSet;

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
@Path("/computer/api/json")
@Api(description = "the computer API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2026-02-01T01:24:35.543085533Z[Etc/UTC]", comments = "Generator version: 7.18.0")
public class ComputerApi {

    @GET
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve computer details", response = ComputerSet.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved computer details", response = ComputerSet.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getComputer(@QueryParam("depth") @NotNull  @ApiParam("Recursion depth in response model")  Integer depth) {
        return Response.ok().entity("magic!").build();
    }
}
