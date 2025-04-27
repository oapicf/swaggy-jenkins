package org.openapitools.api;

import org.openapitools.model.*;
import org.openapitools.api.CreateItemApiService;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;


import java.util.Map;
import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;
import javax.inject.Inject;

import javax.validation.constraints.*;
import javax.validation.Valid;

@Path("/createItem")


@io.swagger.annotations.Api(description = "the createItem API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2025-04-27T08:09:41.877410809Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public class CreateItemApi  {

    @Inject CreateItemApiService service;

    @POST
    
    @Consumes({ "application/json" })
    @Produces({ "*/*" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Create a new job using job configuration, or copied from an existing job", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully created a new job", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response postCreateItem( @NotNull @QueryParam("name") String name, @QueryParam("from") String from, @QueryParam("mode") String mode, @ApiParam(value = "CSRF protection token" ) @HeaderParam("Jenkins-Crumb") String jenkinsCrumb, @ApiParam(value = "Content type header application/xml" ) @HeaderParam("Content-Type") String contentType,@ApiParam(value = "Job configuration in config.xml format" ) @Valid String body,@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.postCreateItem(name,from,mode,jenkinsCrumb,contentType,body,securityContext);
    }
}
