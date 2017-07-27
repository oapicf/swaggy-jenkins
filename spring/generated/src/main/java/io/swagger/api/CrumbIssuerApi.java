package io.swagger.api;

import io.swagger.model.HudsonsecuritycsrfDefaultCrumbIssuer;

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

@Api(value = "crumbIssuer", description = "the crumbIssuer API")
public interface CrumbIssuerApi {

    @ApiOperation(value = "", notes = "Retrieve CSRF protection token", response = HudsonsecuritycsrfDefaultCrumbIssuer.class, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved CSRF protection token", response = HudsonsecuritycsrfDefaultCrumbIssuer.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    
    @RequestMapping(value = "/crumbIssuer/api/json",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<HudsonsecuritycsrfDefaultCrumbIssuer> getCrumb();

}
