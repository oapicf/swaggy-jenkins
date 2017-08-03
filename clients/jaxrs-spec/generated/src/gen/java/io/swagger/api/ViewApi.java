package io.swagger.api;

import io.swagger.model.ListView;

import javax.ws.rs.*;
import javax.ws.rs.core.Response;

import io.swagger.annotations.*;

import java.util.List;
import javax.validation.constraints.*;

@Path("/view")

@Api(description = "the view API")


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2017-08-03T23:35:03.699Z")


public class ViewApi  {

    @GET
    @Path("/{name}/api/json")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve view details", response = ListView.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved view details", response = ListView.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = ListView.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = ListView.class),
        @ApiResponse(code = 404, message = "View cannot be found on Jenkins instance", response = ListView.class) })
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
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class),
        @ApiResponse(code = 404, message = "View cannot be found on Jenkins instance", response = String.class) })
    public Response getViewConfig(@PathParam("name") @ApiParam("Name of the view") String name) {
        return Response.ok().entity("magic!").build();
    }

    @POST
    @Path("/{name}/config.xml")
    
    
    @ApiOperation(value = "", notes = "Update view configuration", response = void.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully updated view configuration", response = void.class),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class),
        @ApiResponse(code = 404, message = "View cannot be found on Jenkins instance", response = void.class) })
    public Response postViewConfig(@PathParam("name") @ApiParam("Name of the view") String name,String body,@HeaderParam("Jenkins-Crumb") String jenkinsCrumb) {
        return Response.ok().entity("magic!").build();
    }
}

