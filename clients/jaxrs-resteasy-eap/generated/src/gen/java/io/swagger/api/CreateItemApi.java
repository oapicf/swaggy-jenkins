package io.swagger.api;

import io.swagger.model.*;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;


import java.util.List;

import java.io.InputStream;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;
import javax.validation.constraints.*;

@Path("/createItem")


@io.swagger.annotations.Api(description = "the createItem API")
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaResteasyEapServerCodegen", date = "2017-08-03T23:34:59.445Z")
public interface CreateItemApi  {
   
    @POST
    
    
    @Produces({ "text/html" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Create a new job using job configuration, or copied from an existing job", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully created a new job", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response postCreateItem( @NotNull @QueryParam("name") String name, @QueryParam("from") String from, @QueryParam("mode") String mode,@ApiParam(value = "Job configuration in config.xml format" ) String body,@ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb,@ApiParam(value = "Content type header application/xml" )@HeaderParam("Content-Type") String contentType,@Context SecurityContext securityContext);
}
