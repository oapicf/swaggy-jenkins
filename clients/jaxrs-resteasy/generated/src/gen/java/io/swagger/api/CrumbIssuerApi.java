package io.swagger.api;

import io.swagger.model.*;
import io.swagger.api.CrumbIssuerApiService;
import io.swagger.api.factories.CrumbIssuerApiServiceFactory;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;

import io.swagger.model.HudsonsecuritycsrfDefaultCrumbIssuer;

import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;
import javax.validation.constraints.*;

@Path("/crumbIssuer")


@io.swagger.annotations.Api(description = "the crumbIssuer API")
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaResteasyServerCodegen", date = "2017-07-25T10:45:08.057+10:00")
public class CrumbIssuerApi  {
   private final CrumbIssuerApiService delegate = CrumbIssuerApiServiceFactory.getCrumbIssuerApi();

    @GET
    @Path("/api/json")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve CSRF protection token", response = HudsonsecuritycsrfDefaultCrumbIssuer.class, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved CSRF protection token", response = HudsonsecuritycsrfDefaultCrumbIssuer.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = HudsonsecuritycsrfDefaultCrumbIssuer.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = HudsonsecuritycsrfDefaultCrumbIssuer.class) })
    public Response getCrumb(@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getCrumb(securityContext);
    }
}
