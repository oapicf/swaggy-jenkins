package org.openapitools.api;

import org.openapitools.model.ComputerSet;
import org.openapitools.api.ComputerApiService;

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
@Path("/computer/api/json")
@RequestScoped

@Api(description = "the computer API")


@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2024-03-15T14:14:28.646664125Z[Etc/UTC]", comments = "Generator version: 7.4.0")

public class ComputerApi  {

  @Context SecurityContext securityContext;

  @Inject ComputerApiService delegate;


    @GET
    
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve computer details", response = ComputerSet.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved computer details", response = ComputerSet.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    public Response getComputer( @NotNull @ApiParam(value = "Recursion depth in response model",required=true)  @QueryParam("depth") Integer depth) {
        return delegate.getComputer(depth, securityContext);
    }
}
