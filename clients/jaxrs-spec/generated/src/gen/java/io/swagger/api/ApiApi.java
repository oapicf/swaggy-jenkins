package io.swagger.api;

import io.swagger.model.Hudson;

import javax.ws.rs.*;
import javax.ws.rs.core.Response;

import io.swagger.annotations.*;

import java.util.List;
import javax.validation.constraints.*;

@Path("/api")

@Api(description = "the api API")


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2017-08-03T23:35:03.699Z")


public class ApiApi  {

    @GET
    @Path("/json")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve Jenkins details", response = Hudson.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved Jenkins details", response = Hudson.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Hudson.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Hudson.class) })
    public Response getJenkins() {
        return Response.ok().entity("magic!").build();
    }

    @HEAD
    @Path("/json")
    
    
    @ApiOperation(value = "", notes = "Retrieve Jenkins headers", response = void.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved Jenkins headers", response = void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class) })
    public Response headJenkins() {
        return Response.ok().entity("magic!").build();
    }
}

