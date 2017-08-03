package io.swagger.api;


import javax.ws.rs.*;
import javax.ws.rs.core.Response;

import io.swagger.annotations.*;

import java.util.List;
import javax.validation.constraints.*;

@Path("/createView")

@Api(description = "the createView API")


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2017-08-03T23:35:03.699Z")


public class CreateViewApi  {

    @POST
    
    
    @Produces({ "text/html" })
    @ApiOperation(value = "", notes = "Create a new view using view configuration", response = void.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully created the view", response = void.class),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class) })
    public Response postCreateView(@QueryParam("name") @NotNull  String name,String body,@HeaderParam("Jenkins-Crumb") String jenkinsCrumb,@HeaderParam("Content-Type") String contentType) {
        return Response.ok().entity("magic!").build();
    }
}

