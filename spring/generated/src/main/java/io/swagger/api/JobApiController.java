package io.swagger.api;

import io.swagger.model.HudsonmodelFreeStyleBuild;
import io.swagger.model.HudsonmodelFreeStyleProject;

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

import java.util.List;

import javax.validation.constraints.*;
import javax.validation.Valid;
@javax.annotation.Generated(value = "io.swagger.codegen.languages.SpringCodegen", date = "2017-07-25T10:46:28.251+10:00")

@Controller
public class JobApiController implements JobApi {



    public ResponseEntity<HudsonmodelFreeStyleProject> getJob(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name) {
        // do some magic!
        return new ResponseEntity<HudsonmodelFreeStyleProject>(HttpStatus.OK);
    }

    public ResponseEntity<String> getJobConfig(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name) {
        // do some magic!
        return new ResponseEntity<String>(HttpStatus.OK);
    }

    public ResponseEntity<HudsonmodelFreeStyleBuild> getJobLastBuild(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name) {
        // do some magic!
        return new ResponseEntity<HudsonmodelFreeStyleBuild>(HttpStatus.OK);
    }

    public ResponseEntity<Void> getJobProgressiveText(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
        @ApiParam(value = "Build number",required=true ) @PathVariable("number") String number,
         @NotNull@ApiParam(value = "Starting point of progressive text output", required = true) @RequestParam(value = "start", required = true) String start) {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

    public ResponseEntity<Void> postJobBuild(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
         @NotNull@ApiParam(value = "", required = true) @RequestParam(value = "json", required = true) String json,
        @ApiParam(value = "") @RequestParam(value = "token", required = false) String token,
        @ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb) {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

    public ResponseEntity<Void> postJobConfig(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
        @ApiParam(value = "Job configuration in config.xml format" ,required=true )  @Valid @RequestBody String body,
        @ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb) {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

    public ResponseEntity<Void> postJobDelete(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
        @ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb) {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

    public ResponseEntity<Void> postJobDisable(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
        @ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb) {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

    public ResponseEntity<Void> postJobEnable(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
        @ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb) {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

    public ResponseEntity<Void> postJobLastBuildStop(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
        @ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb) {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

}
