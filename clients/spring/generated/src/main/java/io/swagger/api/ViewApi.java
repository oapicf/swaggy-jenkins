package io.swagger.api;

import io.swagger.model.HudsonmodelListView;

import io.swagger.annotations.*;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import javax.validation.constraints.*;
import javax.validation.Valid;
@javax.annotation.Generated(value = "io.swagger.codegen.languages.SpringCodegen", date = "2017-07-25T10:46:28.251+10:00")

@Api(value = "view", description = "the view API")
public interface ViewApi {

    @ApiOperation(value = "", notes = "Retrieve view details", response = HudsonmodelListView.class, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved view details", response = HudsonmodelListView.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "View cannot be found on Jenkins instance", response = Void.class) })
    
    @RequestMapping(value = "/view/{name}/api/json",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<HudsonmodelListView> getView(@ApiParam(value = "Name of the view",required=true ) @PathVariable("name") String name);


    @ApiOperation(value = "", notes = "Retrieve view configuration", response = String.class, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved view configuration in config.xml format", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "View cannot be found on Jenkins instance", response = Void.class) })
    
    @RequestMapping(value = "/view/{name}/config.xml",
        produces = { "text/xml" }, 
        method = RequestMethod.GET)
    ResponseEntity<String> getViewConfig(@ApiParam(value = "Name of the view",required=true ) @PathVariable("name") String name);


    @ApiOperation(value = "", notes = "Update view configuration", response = Void.class, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully updated view configuration", response = Void.class),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "View cannot be found on Jenkins instance", response = Void.class) })
    
    @RequestMapping(value = "/view/{name}/config.xml",
        method = RequestMethod.POST)
    ResponseEntity<Void> postViewConfig(@ApiParam(value = "Name of the view",required=true ) @PathVariable("name") String name,@ApiParam(value = "View configuration in config.xml format" ,required=true )  @Valid @RequestBody String body,@ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb);

}
