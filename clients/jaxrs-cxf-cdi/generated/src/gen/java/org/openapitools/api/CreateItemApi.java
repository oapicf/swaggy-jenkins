package org.openapitools.api;

import org.openapitools.api.CreateItemApiService;

import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;

import io.swagger.annotations.*;
import java.io.InputStream;

import org.apache.cxf.jaxrs.ext.PATCH;
import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;

import java.util.Map;
import java.util.List;
import javax.validation.constraints.*;
import javax.validation.Valid;
@Path("/createItem")
@RequestScoped

@Api


@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2026-02-01T01:24:25.254098692Z[Etc/UTC]", comments = "Generator version: 7.18.0")

public class CreateItemApi  {

  @Context SecurityContext securityContext;

  @Inject CreateItemApiService delegate;


    @POST
    
    @Consumes({ "application/json" })
    @Produces({ "*/*" })
    @ApiOperation(value = "", notes = "Create a new job using job configuration, or copied from an existing job", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully created a new job", response = Void.class),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response postCreateItem( @NotNull @ApiParam(value = "Name of the new job",required=true)  @QueryParam("name") String name, @ApiParam(value = "Existing job to copy from")  @QueryParam("from") String from, @ApiParam(value = "Set to 'copy' for copying an existing job")  @QueryParam("mode") String mode,  @ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb,  @ApiParam(value = "Content type header application/xml" )@HeaderParam("Content-Type") String contentType, @ApiParam(value = "Job configuration in config.xml format" ) String body) {
        return delegate.postCreateItem(name, from, mode, jenkinsCrumb, contentType, body, securityContext);
    }
}
