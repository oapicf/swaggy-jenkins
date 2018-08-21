package org.openapitools.api;

import org.openapitools.model.*;
import org.openapitools.api.CreateItemApiService;
import org.openapitools.api.factories.CreateItemApiServiceFactory;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;


import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import org.wso2.msf4j.formparam.FormDataParam;
import org.wso2.msf4j.formparam.FileInfo;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;

@Path("/createItem")


@io.swagger.annotations.Api(description = "the createItem API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2018-08-21T02:11:56.740Z[GMT]")
public class CreateItemApi  {
   private final CreateItemApiService delegate = CreateItemApiServiceFactory.getCreateItemApi();

    @POST
    
    @Consumes({ "application/json" })
    @Produces({ "*/*" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Create a new job using job configuration, or copied from an existing job", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully created a new job", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response postCreateItem(@ApiParam(value = "Name of the new job",required=true) @QueryParam("name") String name
,@ApiParam(value = "Existing job to copy from") @QueryParam("from") String from
,@ApiParam(value = "Set to 'copy' for copying an existing job") @QueryParam("mode") String mode
,@ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb
,@ApiParam(value = "Content type header application/xml" )@HeaderParam("Content-Type") String contentType
,@ApiParam(value = "Job configuration in config.xml format" ) String body
)
    throws NotFoundException {
        return delegate.postCreateItem(name,from,mode,jenkinsCrumb,contentType,body);
    }
}
