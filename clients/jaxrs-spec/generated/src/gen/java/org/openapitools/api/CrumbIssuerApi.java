package org.openapitools.api;

import org.openapitools.model.DefaultCrumbIssuer;

import javax.ws.rs.*;
import javax.ws.rs.core.Response;

import io.swagger.annotations.*;

import java.util.Map;
import java.util.List;
import javax.validation.constraints.*;
import javax.validation.Valid;

@Path("/crumbIssuer")
@Api(description = "the crumbIssuer API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2019-04-10T03:55:00.323Z[GMT]")
public class CrumbIssuerApi {

    @GET
    @Path("/api/json")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve CSRF protection token", response = DefaultCrumbIssuer.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", "baseRemoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved CSRF protection token", response = DefaultCrumbIssuer.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getCrumb() {
        return Response.ok().entity("magic!").build();
    }
}
