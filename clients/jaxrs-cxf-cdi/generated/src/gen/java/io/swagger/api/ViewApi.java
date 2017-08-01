package io.swagger.api;

import io.swagger.model.HudsonmodelListView;
import io.swagger.api.ViewApiService;

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
@Path("/view")
@RequestScoped

@Api(description = "the view API")


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2017-07-25T10:45:05.448+10:00")

public class ViewApi  {

  @Context SecurityContext securityContext;

  @Inject ViewApiService delegate;


    @GET
    @Path("/{name}/api/json")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "Retrieve view details", response = HudsonmodelListView.class, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved view details", response = HudsonmodelListView.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = HudsonmodelListView.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = HudsonmodelListView.class),
        @ApiResponse(code = 404, message = "View cannot be found on Jenkins instance", response = HudsonmodelListView.class) })
    public Response getView(@ApiParam(value = "Name of the view",required=true) @PathParam("name") String name) {
        return delegate.getView(name, securityContext);
    }

    @GET
    @Path("/{name}/config.xml")
    
    @Produces({ "text/xml" })
    @ApiOperation(value = "", notes = "Retrieve view configuration", response = String.class, tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved view configuration in config.xml format", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = String.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = String.class),
        @ApiResponse(code = 404, message = "View cannot be found on Jenkins instance", response = String.class) })
    public Response getViewConfig(@ApiParam(value = "Name of the view",required=true) @PathParam("name") String name) {
        return delegate.getViewConfig(name, securityContext);
    }

    @POST
    @Path("/{name}/config.xml")
    
    
    @ApiOperation(value = "", notes = "Update view configuration", response = void.class, tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully updated view configuration", response = void.class),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class),
        @ApiResponse(code = 404, message = "View cannot be found on Jenkins instance", response = void.class) })
    public Response postViewConfig(@ApiParam(value = "Name of the view",required=true) @PathParam("name") String name, @ApiParam(value = "View configuration in config.xml format" ,required=true) String body, @ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb) {
        return delegate.postViewConfig(name, body, jenkinsCrumb, securityContext);
    }
}
