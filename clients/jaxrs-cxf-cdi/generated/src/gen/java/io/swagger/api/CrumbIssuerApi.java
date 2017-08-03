package io.swagger.api;

import io.swagger.model.DefaultCrumbIssuer;
import io.swagger.api.CrumbIssuerApiService;

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
@Path("/crumbIssuer")
@RequestScoped

@Api(description = "the crumbIssuer API")


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2017-08-03T23:34:47.267Z")

public class CrumbIssuerApi  {

  @Context SecurityContext securityContext;

  @Inject CrumbIssuerApiService delegate;


    @GET
    @Path("/api/json")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve CSRF protection token", response = DefaultCrumbIssuer.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved CSRF protection token", response = DefaultCrumbIssuer.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = DefaultCrumbIssuer.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = DefaultCrumbIssuer.class) })
    public Response getCrumb() {
        return delegate.getCrumb(securityContext);
    }
}
