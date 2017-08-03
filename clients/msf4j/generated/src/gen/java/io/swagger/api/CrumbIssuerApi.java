package io.swagger.api;

import io.swagger.model.*;
import io.swagger.api.CrumbIssuerApiService;
import io.swagger.api.factories.CrumbIssuerApiServiceFactory;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;

import io.swagger.model.DefaultCrumbIssuer;

import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import org.wso2.msf4j.formparam.FormDataParam;
import org.wso2.msf4j.formparam.FileInfo;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;

@Path("/crumbIssuer")


@io.swagger.annotations.Api(description = "the crumbIssuer API")
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaMSF4JServerCodegen", date = "2017-08-03T23:35:16.576Z")
public class CrumbIssuerApi  {
   private final CrumbIssuerApiService delegate = CrumbIssuerApiServiceFactory.getCrumbIssuerApi();

    @GET
    @Path("/api/json")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve CSRF protection token", response = DefaultCrumbIssuer.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved CSRF protection token", response = DefaultCrumbIssuer.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = DefaultCrumbIssuer.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = DefaultCrumbIssuer.class) })
    public Response getCrumb()
    throws NotFoundException {
        return delegate.getCrumb();
    }
}
