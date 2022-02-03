package org.openapitools.api;

import org.openapitools.model.DefaultCrumbIssuer;
import org.openapitools.api.CrumbIssuerApiService;

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
@Path("/crumbIssuer/api/json")
@RequestScoped

@Api(description = "the crumbIssuer API")


@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2022-02-02T10:45:17.573327Z[Etc/UTC]")

public class CrumbIssuerApi  {

  @Context SecurityContext securityContext;

  @Inject CrumbIssuerApiService delegate;


    @GET
    
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve CSRF protection token", response = DefaultCrumbIssuer.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "base" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved CSRF protection token", response = DefaultCrumbIssuer.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getCrumb() {
        return delegate.getCrumb(securityContext);
    }
}
