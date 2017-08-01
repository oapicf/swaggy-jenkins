package io.swagger.api;

import io.swagger.model.HudsonmodelHudson;
import io.swagger.api.ApiApiService;

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
@Path("/api")
@RequestScoped

@Api(description = "the api API")


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2017-07-25T10:45:05.448+10:00")

public class ApiApi  {

  @Context SecurityContext securityContext;

  @Inject ApiApiService delegate;


    @GET
    @Path("/json")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve Jenkins details", response = HudsonmodelHudson.class, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved Jenkins details", response = HudsonmodelHudson.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = HudsonmodelHudson.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = HudsonmodelHudson.class) })
    public Response getJenkins() {
        return delegate.getJenkins(securityContext);
    }

    @HEAD
    @Path("/json")
    
    
    @ApiOperation(value = "", notes = "Retrieve Jenkins headers", response = void.class, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved Jenkins headers", response = void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class) })
    public Response headJenkins() {
        return delegate.headJenkins(securityContext);
    }
}
