package com.prokarma.pkmst.controller;

import com.prokarma.pkmst.model.ComputerSet;
import com.prokarma.pkmst.model.FreeStyleBuild;
import com.prokarma.pkmst.model.FreeStyleProject;
import com.prokarma.pkmst.model.Hudson;
import com.prokarma.pkmst.model.ListView;
import com.prokarma.pkmst.model.Queue;

import io.swagger.annotations.*;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
/**
 * Api implementation
 * @author pkmst
 *
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2022-02-02T10:44:39.394659Z[Etc/UTC]")
@Controller
public class RemoteAccessApiController implements RemoteAccessApi {
    private final ObjectMapper objectMapper;
@Autowired
    public RemoteAccessApiController(ObjectMapper objectMapper) {
        this.objectMapper = objectMapper;
    }

    public ResponseEntity<ComputerSet> getComputer(@ApiParam(value = "Recursion depth in response model", required = true)  @RequestParam(value = "depth", required = true) Integer depth,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<ComputerSet>(objectMapper.readValue("", ComputerSet.class), HttpStatus.OK);
        }

        return new ResponseEntity<ComputerSet>(HttpStatus.OK);
    }

    public ResponseEntity<Hudson> getJenkins(@RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<Hudson>(objectMapper.readValue("", Hudson.class), HttpStatus.OK);
        }

        return new ResponseEntity<Hudson>(HttpStatus.OK);
    }

    public ResponseEntity<FreeStyleProject> getJob(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<FreeStyleProject>(objectMapper.readValue("", FreeStyleProject.class), HttpStatus.OK);
        }

        return new ResponseEntity<FreeStyleProject>(HttpStatus.OK);
    }

    public ResponseEntity<String> getJobConfig(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<String>(HttpStatus.OK);
    }

    public ResponseEntity<FreeStyleBuild> getJobLastBuild(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<FreeStyleBuild>(objectMapper.readValue("", FreeStyleBuild.class), HttpStatus.OK);
        }

        return new ResponseEntity<FreeStyleBuild>(HttpStatus.OK);
    }

    public ResponseEntity<Void> getJobProgressiveText(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
        @ApiParam(value = "Build number",required=true ) @PathVariable("number") String number,
        @ApiParam(value = "Starting point of progressive text output", required = true)  @RequestParam(value = "start", required = true) String start,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

    public ResponseEntity<Queue> getQueue(@RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<Queue>(objectMapper.readValue("", Queue.class), HttpStatus.OK);
        }

        return new ResponseEntity<Queue>(HttpStatus.OK);
    }

    public ResponseEntity<Queue> getQueueItem(@ApiParam(value = "Queue number",required=true ) @PathVariable("number") String number,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<Queue>(objectMapper.readValue("", Queue.class), HttpStatus.OK);
        }

        return new ResponseEntity<Queue>(HttpStatus.OK);
    }

    public ResponseEntity<ListView> getView(@ApiParam(value = "Name of the view",required=true ) @PathVariable("name") String name,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<ListView>(objectMapper.readValue("", ListView.class), HttpStatus.OK);
        }

        return new ResponseEntity<ListView>(HttpStatus.OK);
    }

    public ResponseEntity<String> getViewConfig(@ApiParam(value = "Name of the view",required=true ) @PathVariable("name") String name,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<String>(HttpStatus.OK);
    }

    public ResponseEntity<Void> headJenkins(@RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

    public ResponseEntity<Void> postCreateItem(@ApiParam(value = "Name of the new job", required = true)  @RequestParam(value = "name", required = true) String name,
        @ApiParam(value = "Existing job to copy from")  @RequestParam(value = "from", required = false) String from,
        @ApiParam(value = "Set to 'copy' for copying an existing job")  @RequestParam(value = "mode", required = false) String mode,
        @ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb,
        @ApiParam(value = "Content type header application/xml" ) @RequestHeader(value="Content-Type", required=false) String contentType,
        @ApiParam(value = "Job configuration in config.xml format"  )   @RequestBody String body,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

    public ResponseEntity<Void> postCreateView(@ApiParam(value = "Name of the new view", required = true)  @RequestParam(value = "name", required = true) String name,
        @ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb,
        @ApiParam(value = "Content type header application/xml" ) @RequestHeader(value="Content-Type", required=false) String contentType,
        @ApiParam(value = "View configuration in config.xml format"  )   @RequestBody String body,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

    public ResponseEntity<Void> postJobBuild(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
        @ApiParam(value = "", required = true)  @RequestParam(value = "json", required = true) String json,
        @ApiParam(value = "")  @RequestParam(value = "token", required = false) String token,
        @ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

    public ResponseEntity<Void> postJobConfig(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
        @ApiParam(value = "Job configuration in config.xml format" ,required=true )   @RequestBody String body,
        @ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

    public ResponseEntity<Void> postJobDelete(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
        @ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

    public ResponseEntity<Void> postJobDisable(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
        @ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

    public ResponseEntity<Void> postJobEnable(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
        @ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

    public ResponseEntity<Void> postJobLastBuildStop(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
        @ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

    public ResponseEntity<Void> postViewConfig(@ApiParam(value = "Name of the view",required=true ) @PathVariable("name") String name,
        @ApiParam(value = "View configuration in config.xml format" ,required=true )   @RequestBody String body,
        @ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

}
