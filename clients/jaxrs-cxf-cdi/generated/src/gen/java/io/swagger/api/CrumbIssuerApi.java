package io.swagger.api;

import io.swagger.model.HudsonsecuritycsrfDefaultCrumbIssuer;
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


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2017-07-25T10:45:05.448+10:00")

public class CrumbIssuerApi  {

  @Context SecurityContext securityContext;

  @Inject CrumbIssuerApiService delegate;


    @GET
    @Path("/api/json")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve CSRF protection token", response = HudsonsecuritycsrfDefaultCrumbIssuer.class, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved CSRF protection token", response = HudsonsecuritycsrfDefaultCrumbIssuer.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = HudsonsecuritycsrfDefaultCrumbIssuer.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = HudsonsecuritycsrfDefaultCrumbIssuer.class) })
    public Response getCrumb() {
        return delegate.getCrumb(securityContext);
    }
}
