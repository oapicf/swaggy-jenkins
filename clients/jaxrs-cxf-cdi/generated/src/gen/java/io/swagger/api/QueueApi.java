package io.swagger.api;

import io.swagger.model.HudsonmodelQueue;
import io.swagger.api.QueueApiService;

import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;

import io.swagger.annotations.*;
import java.io.InputStream;

import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;

import java.util.List;
import javax.validation.constraints.*;
@Path("/queue")
@RequestScoped

@Api(description = "the queue API")


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2017-07-25T10:45:05.448+10:00")

public class QueueApi  {

  @Context SecurityContext securityContext;

  @Inject QueueApiService delegate;


    @GET
    @Path("/api/json")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve queue details", response = HudsonmodelQueue.class, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved queue details", response = HudsonmodelQueue.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = HudsonmodelQueue.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = HudsonmodelQueue.class) })
    public Response getQueue() {
        return delegate.getQueue(securityContext);
    }

    @GET
    @Path("/item/{number}/api/json")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve queued item details", response = HudsonmodelQueue.class, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved queued item details", response = HudsonmodelQueue.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = HudsonmodelQueue.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = HudsonmodelQueue.class) })
    public Response getQueueItem(@ApiParam(value = "Queue number",required=true) @PathParam("number") String number) {
        return delegate.getQueueItem(number, securityContext);
    }
}
