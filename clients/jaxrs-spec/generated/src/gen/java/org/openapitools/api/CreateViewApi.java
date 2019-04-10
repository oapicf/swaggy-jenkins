package org.openapitools.api;


import javax.ws.rs.*;
import javax.ws.rs.core.Response;

import io.swagger.annotations.*;

import java.util.Map;
import java.util.List;
import javax.validation.constraints.*;
import javax.validation.Valid;

@Path("/createView")
@Api(description = "the createView API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2019-04-10T03:55:00.323Z[GMT]")
public class CreateViewApi {

    @POST
    @Consumes({ "application/json" })
    @Produces({ "*/*" })
    @ApiOperation(value = "", notes = "Create a new view using view configuration", response = Void.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully created the view", response = Void.class),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response postCreateView(@QueryParam("name") @NotNull   @ApiParam("Name of the new view")  String name,@HeaderParam("Jenkins-Crumb")   @ApiParam("CSRF protection token") String jenkinsCrumb,@HeaderParam("Content-Type")   @ApiParam("Content type header application/xml") String contentType,@Valid String body) {
        return Response.ok().entity("magic!").build();
    }
}
