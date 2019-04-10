package org.openapitools.api;

import org.openapitools.model.*;
import org.openapitools.api.ViewApiService;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;

import org.openapitools.model.ListView;

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

@Path("/view")


@io.swagger.annotations.Api(description = "the view API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2019-04-10T03:54:50.408Z[GMT]")
public class ViewApi  {

    @Inject ViewApiService service;

    @GET
    @Path("/{name}/api/json")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve view details", response = ListView.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved view details", response = ListView.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 404, message = "View cannot be found on Jenkins instance", response = Void.class) })
    public Response getView( @PathParam("name") String name,@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.getView(name,securityContext);
    }
    @GET
    @Path("/{name}/config.xml")
    
    @Produces({ "text/xml" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve view configuration", response = String.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved view configuration in config.xml format", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 404, message = "View cannot be found on Jenkins instance", response = Void.class) })
    public Response getViewConfig( @PathParam("name") String name,@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.getViewConfig(name,securityContext);
    }
    @POST
    @Path("/{name}/config.xml")
    @Consumes({ "application/json" })
    @Produces({ "*/*" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Update view configuration", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully updated view configuration", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 404, message = "View cannot be found on Jenkins instance", response = Void.class) })
    public Response postViewConfig( @PathParam("name") String name,@ApiParam(value = "View configuration in config.xml format" ,required=true) String body,@ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb,@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.postViewConfig(name,body,jenkinsCrumb,securityContext);
    }
}
