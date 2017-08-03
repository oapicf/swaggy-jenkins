package io.swagger.api;

import io.swagger.model.*;
import io.swagger.api.QueueApiService;
import io.swagger.api.factories.QueueApiServiceFactory;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;

import io.swagger.model.Queue;

import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import org.wso2.msf4j.formparam.FormDataParam;
import org.wso2.msf4j.formparam.FileInfo;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;

@Path("/queue")


@io.swagger.annotations.Api(description = "the queue API")
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaMSF4JServerCodegen", date = "2017-08-03T23:35:16.576Z")
public class QueueApi  {
   private final QueueApiService delegate = QueueApiServiceFactory.getQueueApi();

    @GET
    @Path("/api/json")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve queue details", response = Queue.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved queue details", response = Queue.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Queue.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Queue.class) })
    public Response getQueue()
    throws NotFoundException {
        return delegate.getQueue();
    }
    @GET
    @Path("/item/{number}/api/json")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve queued item details", response = Queue.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved queued item details", response = Queue.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Queue.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Queue.class) })
    public Response getQueueItem(@ApiParam(value = "Queue number",required=true) @PathParam("number") String number
)
    throws NotFoundException {
        return delegate.getQueueItem(number);
    }
}
