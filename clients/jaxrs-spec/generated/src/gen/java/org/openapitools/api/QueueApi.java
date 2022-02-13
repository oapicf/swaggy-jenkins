package org.openapitools.api;

import org.openapitools.model.Queue;

import javax.ws.rs.*;
import javax.ws.rs.core.Response;

import io.swagger.annotations.*;

import java.io.InputStream;
import java.util.Map;
import java.util.List;
import javax.validation.constraints.*;
import javax.validation.Valid;

@Path("/queue")
@Api(description = "the queue API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2022-02-13T02:22:19.792787Z[Etc/UTC]")public class QueueApi {

    @GET
    @Path("/api/json")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve queue details", response = Queue.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved queue details", response = Queue.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getQueue() {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/item/{number}/api/json")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve queued item details", response = Queue.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved queued item details", response = Queue.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class)
    })
    public Response getQueueItem(@PathParam("number") @ApiParam("Queue number") String number) {
        return Response.ok().entity("magic!").build();
    }
}
