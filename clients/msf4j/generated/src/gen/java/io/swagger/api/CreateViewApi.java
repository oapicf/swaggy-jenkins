package io.swagger.api;

import io.swagger.model.*;
import io.swagger.api.CreateViewApiService;
import io.swagger.api.factories.CreateViewApiServiceFactory;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;


import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import org.wso2.msf4j.formparam.FormDataParam;
import org.wso2.msf4j.formparam.FileInfo;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;

@Path("/createView")


@io.swagger.annotations.Api(description = "the createView API")
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaMSF4JServerCodegen", date = "2017-08-03T23:35:16.576Z")
public class CreateViewApi  {
   private final CreateViewApiService delegate = CreateViewApiServiceFactory.getCreateViewApi();

    @POST
    
    
    @Produces({ "text/html" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "Create a new view using view configuration", response = void.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Successfully created the view", response = void.class),
        
        @io.swagger.annotations.ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = void.class),
        
        @io.swagger.annotations.ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = void.class),
        
        @io.swagger.annotations.ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = void.class) })
    public Response postCreateView(@ApiParam(value = "Name of the new view",required=true) @QueryParam("name") String name
,@ApiParam(value = "View configuration in config.xml format" ) String body
,@ApiParam(value = "CSRF protection token" )@HeaderParam("Jenkins-Crumb") String jenkinsCrumb
,@ApiParam(value = "Content type header application/xml" )@HeaderParam("Content-Type") String contentType
)
    throws NotFoundException {
        return delegate.postCreateView(name,body,jenkinsCrumb,contentType);
    }
}
