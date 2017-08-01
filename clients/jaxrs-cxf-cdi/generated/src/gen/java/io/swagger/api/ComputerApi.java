package io.swagger.api;

import io.swagger.model.HudsonmodelComputerSet;
import io.swagger.api.ComputerApiService;

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
@Path("/computer")
@RequestScoped

@Api(description = "the computer API")


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2017-07-25T10:45:05.448+10:00")

public class ComputerApi  {

  @Context SecurityContext securityContext;

  @Inject ComputerApiService delegate;


    @GET
    @Path("/api/json?depth=1")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve computer details", response = HudsonmodelComputerSet.class, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved computer details", response = HudsonmodelComputerSet.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = HudsonmodelComputerSet.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = HudsonmodelComputerSet.class) })
    public Response getComputer() {
        return delegate.getComputer(securityContext);
    }
}
