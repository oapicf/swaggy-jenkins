package io.swagger.api;

import io.swagger.model.DefaultCrumbIssuer;

import javax.ws.rs.*;
import javax.ws.rs.core.Response;

import io.swagger.annotations.*;

import java.util.List;
import javax.validation.constraints.*;

@Path("/crumbIssuer")

@Api(description = "the crumbIssuer API")


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2017-08-03T23:35:03.699Z")


public class CrumbIssuerApi  {

    @GET
    @Path("/api/json")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve CSRF protection token", response = DefaultCrumbIssuer.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved CSRF protection token", response = DefaultCrumbIssuer.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = DefaultCrumbIssuer.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = DefaultCrumbIssuer.class) })
    public Response getCrumb() {
        return Response.ok().entity("magic!").build();
    }
}

