package io.swagger.api;

import io.swagger.model.*;
import io.swagger.api.CreateItemApiService;
import io.swagger.api.factories.CreateItemApiServiceFactory;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;


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

@Path("/createItem")


@io.swagger.annotations.Api(description = "the createItem API")
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJerseyServerCodegen", date = "2017-07-25T10:45:00.143+10:00")
public class CreateItemApi  {
   private final CreateItemApiService delegate = CreateItemApiServiceFactory.getCreateItemApi();

    @POST
    
    
    @Produces({ "text/html" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Create a new job using job configuration, or copied from an existing job", response = void.class, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully created a new job", response = void.class),
        
        @io.swagger.annotations.ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = void.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class) })
    public Response postCreateItem(@ApiParam(value = "Name of the new job",required=true) @QueryParam("name") String name
,@ApiParam(value = "Existing job to copy from") @QueryParam("from") String from
,@ApiParam(value = "Set to 'copy' for copying an existing job") @QueryParam("mode") String mode
,@ApiParam(value = "Job configuration in config.xml format" ) String body
,@ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb
,@ApiParam(value = "Content type header application/xml" )@HeaderParam("Content-Type") String contentType
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.postCreateItem(name,from,mode,body,jenkinsCrumb,contentType,securityContext);
    }
}
