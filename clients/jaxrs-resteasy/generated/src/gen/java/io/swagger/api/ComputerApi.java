package io.swagger.api;

import io.swagger.model.*;
import io.swagger.api.ComputerApiService;
import io.swagger.api.factories.ComputerApiServiceFactory;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;

import io.swagger.model.ComputerSet;

import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;
import javax.validation.constraints.*;

@Path("/computer")


@io.swagger.annotations.Api(description = "the computer API")
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaResteasyServerCodegen", date = "2017-08-03T23:34:55.006Z")
public class ComputerApi  {
   private final ComputerApiService delegate = ComputerApiServiceFactory.getComputerApi();

    @GET
    @Path("/api/json")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Retrieve computer details", response = ComputerSet.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully retrieved computer details", response = ComputerSet.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = ComputerSet.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = ComputerSet.class) })
    public Response getComputer( @NotNull  @QueryParam("depth") Integer depth,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getComputer(depth,securityContext);
    }
}
