/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech) (7.4.0).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package com.prokarma.pkmst.controller;

import com.prokarma.pkmst.model.ComputerSet;
import com.prokarma.pkmst.model.FreeStyleBuild;
import com.prokarma.pkmst.model.FreeStyleProject;
import com.prokarma.pkmst.model.Hudson;
import com.prokarma.pkmst.model.ListView;
import com.prokarma.pkmst.model.Queue;

import io.swagger.annotations.*;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import java.io.IOException;

import java.util.List;
/**
 * Provides the info about api methods
 * @author pkmst
 *
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2024-03-15T14:12:42.279581335Z[Etc/UTC]", comments = "Generator version: 7.4.0")
@Api(value = "RemoteAccess", description = "the RemoteAccess API")
public interface RemoteAccessApi {

    @ApiOperation(value = "", notes = "Retrieve computer details", response = ComputerSet.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved computer details", response = ComputerSet.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    @RequestMapping(
        method = RequestMethod.GET,
        value = "/computer/api/json",
        produces = { "application/json" }
    )
    ResponseEntity<ComputerSet> getComputer(@ApiParam(value = "Recursion depth in response model", required = true)  @RequestParam(value = "depth", required = true) Integer depth, @RequestHeader(value = "Accept", required = false) String accept) throws Exception;


    @ApiOperation(value = "", notes = "Retrieve Jenkins details", response = Hudson.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved Jenkins details", response = Hudson.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    @RequestMapping(
        method = RequestMethod.GET,
        value = "/api/json",
        produces = { "application/json" }
    )
    ResponseEntity<Hudson> getJenkins( @RequestHeader(value = "Accept", required = false) String accept) throws Exception;


    @ApiOperation(value = "", notes = "Retrieve job details", response = FreeStyleProject.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job details", response = FreeStyleProject.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance") })
    @RequestMapping(
        method = RequestMethod.GET,
        value = "/job/{name}/api/json",
        produces = { "application/json" }
    )
    ResponseEntity<FreeStyleProject> getJob(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name, @RequestHeader(value = "Accept", required = false) String accept) throws Exception;


    @ApiOperation(value = "", notes = "Retrieve job configuration", response = String.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job configuration in config.xml format", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance") })
    @RequestMapping(
        method = RequestMethod.GET,
        value = "/job/{name}/config.xml",
        produces = { "text/xml" }
    )
    ResponseEntity<String> getJobConfig(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name, @RequestHeader(value = "Accept", required = false) String accept) throws Exception;


    @ApiOperation(value = "", notes = "Retrieve job's last build details", response = FreeStyleBuild.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job's last build details", response = FreeStyleBuild.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance") })
    @RequestMapping(
        method = RequestMethod.GET,
        value = "/job/{name}/lastBuild/api/json",
        produces = { "application/json" }
    )
    ResponseEntity<FreeStyleBuild> getJobLastBuild(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name, @RequestHeader(value = "Accept", required = false) String accept) throws Exception;


    @ApiOperation(value = "", notes = "Retrieve job's build progressive text output", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job's build progressive text output"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance") })
    @RequestMapping(
        method = RequestMethod.GET,
        value = "/job/{name}/{number}/logText/progressiveText"
    )
    ResponseEntity<Void> getJobProgressiveText(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,@ApiParam(value = "Build number",required=true ) @PathVariable("number") String number,@ApiParam(value = "Starting point of progressive text output", required = true)  @RequestParam(value = "start", required = true) String start, @RequestHeader(value = "Accept", required = false) String accept) throws Exception;


    @ApiOperation(value = "", notes = "Retrieve queue details", response = Queue.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved queue details", response = Queue.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    @RequestMapping(
        method = RequestMethod.GET,
        value = "/queue/api/json",
        produces = { "application/json" }
    )
    ResponseEntity<Queue> getQueue( @RequestHeader(value = "Accept", required = false) String accept) throws Exception;


    @ApiOperation(value = "", notes = "Retrieve queued item details", response = Queue.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved queued item details", response = Queue.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    @RequestMapping(
        method = RequestMethod.GET,
        value = "/queue/item/{number}/api/json",
        produces = { "application/json" }
    )
    ResponseEntity<Queue> getQueueItem(@ApiParam(value = "Queue number",required=true ) @PathVariable("number") String number, @RequestHeader(value = "Accept", required = false) String accept) throws Exception;


    @ApiOperation(value = "", notes = "Retrieve view details", response = ListView.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved view details", response = ListView.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "View cannot be found on Jenkins instance") })
    @RequestMapping(
        method = RequestMethod.GET,
        value = "/view/{name}/api/json",
        produces = { "application/json" }
    )
    ResponseEntity<ListView> getView(@ApiParam(value = "Name of the view",required=true ) @PathVariable("name") String name, @RequestHeader(value = "Accept", required = false) String accept) throws Exception;


    @ApiOperation(value = "", notes = "Retrieve view configuration", response = String.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved view configuration in config.xml format", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "View cannot be found on Jenkins instance") })
    @RequestMapping(
        method = RequestMethod.GET,
        value = "/view/{name}/config.xml",
        produces = { "text/xml" }
    )
    ResponseEntity<String> getViewConfig(@ApiParam(value = "Name of the view",required=true ) @PathVariable("name") String name, @RequestHeader(value = "Accept", required = false) String accept) throws Exception;


    @ApiOperation(value = "", notes = "Retrieve Jenkins headers", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved Jenkins headers"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    @RequestMapping(
        method = RequestMethod.HEAD,
        value = "/api/json"
    )
    ResponseEntity<Void> headJenkins( @RequestHeader(value = "Accept", required = false) String accept) throws Exception;


    @ApiOperation(value = "", notes = "Create a new job using job configuration, or copied from an existing job", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully created a new job"),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    @RequestMapping(
        method = RequestMethod.POST,
        value = "/createItem",
        produces = { "*/*" },
        consumes = { "application/json" }
    )
    ResponseEntity<Void> postCreateItem(@ApiParam(value = "Name of the new job", required = true)  @RequestParam(value = "name", required = true) String name,@ApiParam(value = "Existing job to copy from")  @RequestParam(value = "from", required = false) String from,@ApiParam(value = "Set to 'copy' for copying an existing job")  @RequestParam(value = "mode", required = false) String mode,@ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb,@ApiParam(value = "Content type header application/xml" ) @RequestHeader(value="Content-Type", required=false) String contentType,@ApiParam(value = "Job configuration in config.xml format"  )   @RequestBody String body, @RequestHeader(value = "Accept", required = false) String accept) throws Exception;


    @ApiOperation(value = "", notes = "Create a new view using view configuration", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully created the view"),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    @RequestMapping(
        method = RequestMethod.POST,
        value = "/createView",
        produces = { "*/*" },
        consumes = { "application/json" }
    )
    ResponseEntity<Void> postCreateView(@ApiParam(value = "Name of the new view", required = true)  @RequestParam(value = "name", required = true) String name,@ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb,@ApiParam(value = "Content type header application/xml" ) @RequestHeader(value="Content-Type", required=false) String contentType,@ApiParam(value = "View configuration in config.xml format"  )   @RequestBody String body, @RequestHeader(value = "Accept", required = false) String accept) throws Exception;


    @ApiOperation(value = "", notes = "Build a job", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully built the job (backward compatibility for older versions of Jenkins)"),
        @ApiResponse(code = 201, message = "Successfully built the job"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance") })
    @RequestMapping(
        method = RequestMethod.POST,
        value = "/job/{name}/build"
    )
    ResponseEntity<Void> postJobBuild(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,@ApiParam(value = "", required = true)  @RequestParam(value = "json", required = true) String json,@ApiParam(value = "")  @RequestParam(value = "token", required = false) String token,@ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb, @RequestHeader(value = "Accept", required = false) String accept) throws Exception;


    @ApiOperation(value = "", notes = "Update job configuration", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job configuration in config.xml format"),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance") })
    @RequestMapping(
        method = RequestMethod.POST,
        value = "/job/{name}/config.xml",
        produces = { "*/*" },
        consumes = { "application/json" }
    )
    ResponseEntity<Void> postJobConfig(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,@ApiParam(value = "Job configuration in config.xml format" ,required=true )   @RequestBody String body,@ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb, @RequestHeader(value = "Accept", required = false) String accept) throws Exception;


    @ApiOperation(value = "", notes = "Delete a job", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully deleted the job"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance") })
    @RequestMapping(
        method = RequestMethod.POST,
        value = "/job/{name}/doDelete"
    )
    ResponseEntity<Void> postJobDelete(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,@ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb, @RequestHeader(value = "Accept", required = false) String accept) throws Exception;


    @ApiOperation(value = "", notes = "Disable a job", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully disabled the job"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance") })
    @RequestMapping(
        method = RequestMethod.POST,
        value = "/job/{name}/disable"
    )
    ResponseEntity<Void> postJobDisable(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,@ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb, @RequestHeader(value = "Accept", required = false) String accept) throws Exception;


    @ApiOperation(value = "", notes = "Enable a job", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully enabled the job"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance") })
    @RequestMapping(
        method = RequestMethod.POST,
        value = "/job/{name}/enable"
    )
    ResponseEntity<Void> postJobEnable(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,@ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb, @RequestHeader(value = "Accept", required = false) String accept) throws Exception;


    @ApiOperation(value = "", notes = "Stop a job", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully stopped the job"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance") })
    @RequestMapping(
        method = RequestMethod.POST,
        value = "/job/{name}/lastBuild/stop"
    )
    ResponseEntity<Void> postJobLastBuildStop(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,@ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb, @RequestHeader(value = "Accept", required = false) String accept) throws Exception;


    @ApiOperation(value = "", notes = "Update view configuration", response = Void.class, authorizations = {
        
        @Authorization(value = "jenkins_auth")
         }, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully updated view configuration"),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "View cannot be found on Jenkins instance") })
    @RequestMapping(
        method = RequestMethod.POST,
        value = "/view/{name}/config.xml",
        produces = { "*/*" },
        consumes = { "application/json" }
    )
    ResponseEntity<Void> postViewConfig(@ApiParam(value = "Name of the view",required=true ) @PathVariable("name") String name,@ApiParam(value = "View configuration in config.xml format" ,required=true )   @RequestBody String body,@ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb, @RequestHeader(value = "Accept", required = false) String accept) throws Exception;

}
