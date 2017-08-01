package io.swagger.api;


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

@Api(value = "createView", description = "the createView API")
public interface CreateViewApi {

    @ApiOperation(value = "", notes = "Create a new view using view configuration", response = Void.class, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully created the view", response = Void.class),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    
    @RequestMapping(value = "/createView",
        produces = { "text/html" }, 
        method = RequestMethod.POST)
    ResponseEntity<Void> postCreateView( @NotNull@ApiParam(value = "Name of the new view", required = true) @RequestParam(value = "name", required = true) String name,@ApiParam(value = "View configuration in config.xml format"  )  @Valid @RequestBody String body,@ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb,@ApiParam(value = "Content type header application/xml" ) @RequestHeader(value="Content-Type", required=false) String contentType);

}
