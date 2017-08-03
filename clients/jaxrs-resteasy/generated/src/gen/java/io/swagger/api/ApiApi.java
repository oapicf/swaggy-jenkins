package io.swagger.api;

import io.swagger.model.*;
import io.swagger.api.ApiApiService;
import io.swagger.api.factories.ApiApiServiceFactory;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;

import io.swagger.model.Hudson;

import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;
import javax.validation.constraints.*;

@Path("/api")


@io.swagger.annotations.Api(description = "the api API")
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaResteasyServerCodegen", date = "2017-08-03T23:34:55.006Z")
public class ApiApi  {
   private final ApiApiService delegate = ApiApiServiceFactory.getApiApi();

    @GET
    @Path("/json")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve Jenkins details", response = Hudson.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved Jenkins details", response = Hudson.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Hudson.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Hudson.class) })
    public Response getJenkins(@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getJenkins(securityContext);
    }
    @HEAD
    @Path("/json")
    
    
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve Jenkins headers", response = Void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved Jenkins headers", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response headJenkins(@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.headJenkins(securityContext);
    }
}
