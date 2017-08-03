package io.swagger.api;

import io.swagger.model.ComputerSet;

import javax.ws.rs.*;
import javax.ws.rs.core.Response;

import io.swagger.annotations.*;

import java.util.List;
import javax.validation.constraints.*;

@Path("/computer")

@Api(description = "the computer API")


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2017-08-03T23:35:03.699Z")


public class ComputerApi  {

    @GET
    @Path("/api/json")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve computer details", response = ComputerSet.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved computer details", response = ComputerSet.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = ComputerSet.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = ComputerSet.class) })
    public Response getComputer(@QueryParam("depth") @NotNull  Integer depth) {
        return Response.ok().entity("magic!").build();
    }
}

