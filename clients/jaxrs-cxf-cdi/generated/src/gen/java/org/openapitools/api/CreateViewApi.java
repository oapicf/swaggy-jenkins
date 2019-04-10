package org.openapitools.api;

import org.openapitools.api.CreateViewApiService;

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

import java.util.Map;
import java.util.List;
import javax.validation.constraints.*;
@Path("/createView")
@RequestScoped

@Api(description = "the createView API")


@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2019-04-10T13:31:43.820Z[GMT]")

public class CreateViewApi  {

  @Context SecurityContext securityContext;

  @Inject CreateViewApiService delegate;


    @POST
    
    @Consumes({ "application/json" })
    @Produces({ "*/*" })
    @ApiOperation(value = "", notes = "Create a new view using view configuration", response = Void.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully created the view", response = Void.class),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response postCreateView( @NotNull @ApiParam(value = "Name of the new view",required=true)  @QueryParam("name") String name, @ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb, @ApiParam(value = "Content type header application/xml" )@HeaderParam("Content-Type") String contentType, @ApiParam(value = "View configuration in config.xml format" ) String body) {
        return delegate.postCreateView(name, jenkinsCrumb, contentType, body, securityContext);
    }
}
