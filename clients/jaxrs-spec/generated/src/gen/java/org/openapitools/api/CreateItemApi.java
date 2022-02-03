package org.openapitools.api;


import javax.ws.rs.*;
import javax.ws.rs.core.Response;

import io.swagger.annotations.*;

import java.io.InputStream;
import java.util.Map;
import java.util.List;
import javax.validation.constraints.*;
import javax.validation.Valid;

@Path("/createItem")
@Api(description = "the createItem API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2022-02-02T10:45:47.905826Z[Etc/UTC]")public class CreateItemApi {

    @POST
    @Consumes({ "application/json" })
    @Produces({ "*/*" })
    @ApiOperation(value = "", notes = "Create a new job using job configuration, or copied from an existing job", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully created a new job", response = Void.class),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response postCreateItem(@QueryParam("name") @NotNull  @ApiParam("Name of the new job")  String name,@QueryParam("from")  @ApiParam("Existing job to copy from")  String from,@QueryParam("mode")  @ApiParam("Set to &#39;copy&#39; for copying an existing job")  String mode,@HeaderParam("Jenkins-Crumb")   @ApiParam("CSRF protection token") String jenkinsCrumb,@HeaderParam("Content-Type")   @ApiParam("Content type header application/xml") String contentType,@Valid String body) {
        return Response.ok().entity("magic!").build();
    }
}
