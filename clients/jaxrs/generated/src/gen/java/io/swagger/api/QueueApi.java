package io.swagger.api;

import io.swagger.model.*;
import io.swagger.api.QueueApiService;
import io.swagger.api.factories.QueueApiServiceFactory;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;

import io.swagger.model.HudsonmodelQueue;

import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataParam;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;
import javax.validation.constraints.*;

@Path("/queue")


@io.swagger.annotations.Api(description = "the queue API")
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJerseyServerCodegen", date = "2017-07-25T10:45:00.143+10:00")
public class QueueApi  {
   private final QueueApiService delegate = QueueApiServiceFactory.getQueueApi();

    @GET
    @Path("/api/json")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve queue details", response = HudsonmodelQueue.class, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved queue details", response = HudsonmodelQueue.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = HudsonmodelQueue.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = HudsonmodelQueue.class) })
    public Response getQueue(@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getQueue(securityContext);
    }
    @GET
    @Path("/item/{number}/api/json")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve queued item details", response = HudsonmodelQueue.class, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved queued item details", response = HudsonmodelQueue.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = HudsonmodelQueue.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = HudsonmodelQueue.class) })
    public Response getQueueItem(@ApiParam(value = "Queue number",required=true) @PathParam("number") String number
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getQueueItem(number,securityContext);
    }
}
