package io.swagger.api;

import io.swagger.api.CreateViewApiService;

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
@Path("/createView")
@RequestScoped

@Api(description = "the createView API")


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2017-07-25T10:45:05.448+10:00")

public class CreateViewApi  {

  @Context SecurityContext securityContext;

  @Inject CreateViewApiService delegate;


    @POST
    
    
    @Produces({ "text/html" })
    @ApiOperation(value = "", notes = "Create a new view using view configuration", response = void.class, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully created the view", response = void.class),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class) })
    public Response postCreateView( @NotNull @ApiParam(value = "Name of the new view",required=true)  @QueryParam("name") String name, @ApiParam(value = "View configuration in config.xml format" ) String body, @ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb, @ApiParam(value = "Content type header application/xml" )@HeaderParam("Content-Type") String contentType) {
        return delegate.postCreateView(name, body, jenkinsCrumb, contentType, securityContext);
    }
}
