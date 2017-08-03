package io.swagger.api;

import io.swagger.model.Queue;

import javax.ws.rs.*;
import javax.ws.rs.core.Response;

import io.swagger.annotations.*;

import java.util.List;
import javax.validation.constraints.*;

@Path("/queue")

@Api(description = "the queue API")


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2017-08-03T23:35:03.699Z")


public class QueueApi  {

    @GET
    @Path("/api/json")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve queue details", response = Queue.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved queue details", response = Queue.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Queue.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Queue.class) })
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
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Queue.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Queue.class) })
    public Response getQueueItem(@PathParam("number") @ApiParam("Queue number") String number) {
        return Response.ok().entity("magic!").build();
    }
}

