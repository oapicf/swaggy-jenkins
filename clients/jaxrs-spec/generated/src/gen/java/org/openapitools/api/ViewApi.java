package org.openapitools.api;

import org.openapitools.model.ListView;

import javax.ws.rs.*;
import javax.ws.rs.core.Response;

import io.swagger.annotations.*;

import java.util.Map;
import java.util.List;
import javax.validation.constraints.*;
import javax.validation.Valid;

@Path("/view")
@Api(description = "the view API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2018-08-21T02:12:41.341Z[GMT]")
public class ViewApi {

    @GET
    @Path("/{name}/api/json")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve view details", response = ListView.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved view details", response = ListView.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "View cannot be found on Jenkins instance", response = Void.class)
    })
    public Response getView(@PathParam("name") @ApiParam("Name of the view") String name) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/{name}/config.xml")
    @Produces({ "text/xml" })
    @ApiOperation(value = "", notes = "Retrieve view configuration", response = String.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved view configuration in config.xml format", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "View cannot be found on Jenkins instance", response = Void.class)
    })
    public Response getViewConfig(@PathParam("name") @ApiParam("Name of the view") String name) {
        return Response.ok().entity("magic!").build();
    }

    @POST
    @Path("/{name}/config.xml")
    @Consumes({ "application/json" })
    @Produces({ "*/*" })
    @ApiOperation(value = "", notes = "Update view configuration", response = Void.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully updated view configuration", response = Void.class),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "View cannot be found on Jenkins instance", response = Void.class)
    })
    public Response postViewConfig(@PathParam("name") @ApiParam("Name of the view") String name,@Valid String body,@HeaderParam("Jenkins-Crumb")   @ApiParam("CSRF protection token") String jenkinsCrumb) {
        return Response.ok().entity("magic!").build();
    }
}
