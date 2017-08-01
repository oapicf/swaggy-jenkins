package io.swagger.api;

import io.swagger.model.HudsonmodelFreeStyleBuild;
import io.swagger.model.HudsonmodelFreeStyleProject;

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

@Api(value = "job", description = "the job API")
public interface JobApi {

    @ApiOperation(value = "", notes = "Retrieve job details", response = HudsonmodelFreeStyleProject.class, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job details", response = HudsonmodelFreeStyleProject.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class) })
    
    @RequestMapping(value = "/job/{name}/api/json",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<HudsonmodelFreeStyleProject> getJob(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name);


    @ApiOperation(value = "", notes = "Retrieve job configuration", response = String.class, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job configuration in config.xml format", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class) })
    
    @RequestMapping(value = "/job/{name}/config.xml",
        produces = { "text/xml" }, 
        method = RequestMethod.GET)
    ResponseEntity<String> getJobConfig(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name);


    @ApiOperation(value = "", notes = "Retrieve job's last build details", response = HudsonmodelFreeStyleBuild.class, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job's last build details", response = HudsonmodelFreeStyleBuild.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class) })
    
    @RequestMapping(value = "/job/{name}/lastBuild/api/json",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<HudsonmodelFreeStyleBuild> getJobLastBuild(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name);


    @ApiOperation(value = "", notes = "Retrieve job's build progressive text output", response = Void.class, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job's build progressive text output", response = Void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class) })
    
    @RequestMapping(value = "/job/{name}/{number}/logText/progressiveText",
        method = RequestMethod.GET)
    ResponseEntity<Void> getJobProgressiveText(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,@ApiParam(value = "Build number",required=true ) @PathVariable("number") String number, @NotNull@ApiParam(value = "Starting point of progressive text output", required = true) @RequestParam(value = "start", required = true) String start);


    @ApiOperation(value = "", notes = "Build a job", response = Void.class, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully built the job (backward compatibility for older versions of Jenkins)", response = Void.class),
        @ApiResponse(code = 201, message = "Successfully built the job", response = Void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class) })
    
    @RequestMapping(value = "/job/{name}/build",
        method = RequestMethod.POST)
    ResponseEntity<Void> postJobBuild(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name, @NotNull@ApiParam(value = "", required = true) @RequestParam(value = "json", required = true) String json,@ApiParam(value = "") @RequestParam(value = "token", required = false) String token,@ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb);


    @ApiOperation(value = "", notes = "Update job configuration", response = Void.class, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job configuration in config.xml format", response = Void.class),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class) })
    
    @RequestMapping(value = "/job/{name}/config.xml",
        produces = { "text/xml" }, 
        method = RequestMethod.POST)
    ResponseEntity<Void> postJobConfig(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,@ApiParam(value = "Job configuration in config.xml format" ,required=true )  @Valid @RequestBody String body,@ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb);


    @ApiOperation(value = "", notes = "Delete a job", response = Void.class, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully deleted the job", response = Void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class) })
    
    @RequestMapping(value = "/job/{name}/doDelete",
        method = RequestMethod.POST)
    ResponseEntity<Void> postJobDelete(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,@ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb);


    @ApiOperation(value = "", notes = "Disable a job", response = Void.class, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully disabled the job", response = Void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class) })
    
    @RequestMapping(value = "/job/{name}/disable",
        method = RequestMethod.POST)
    ResponseEntity<Void> postJobDisable(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,@ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb);


    @ApiOperation(value = "", notes = "Enable a job", response = Void.class, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully enabled the job", response = Void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class) })
    
    @RequestMapping(value = "/job/{name}/enable",
        method = RequestMethod.POST)
    ResponseEntity<Void> postJobEnable(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,@ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb);


    @ApiOperation(value = "", notes = "Stop a job", response = Void.class, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully stopped the job", response = Void.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = Void.class) })
    
    @RequestMapping(value = "/job/{name}/lastBuild/stop",
        method = RequestMethod.POST)
    ResponseEntity<Void> postJobLastBuildStop(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,@ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb);

}
