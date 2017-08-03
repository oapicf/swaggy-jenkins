package io.swagger.api;

import io.swagger.model.FreeStyleBuild;
import io.swagger.model.FreeStyleProject;

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
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import javax.validation.constraints.*;
import javax.validation.Valid;
@javax.annotation.Generated(value = "io.swagger.codegen.languages.SpringCodegen", date = "2017-08-03T23:37:43.850Z")

@Controller
public class JobApiController implements JobApi {
    private final ObjectMapper objectMapper;

    public JobApiController(ObjectMapper objectMapper) {
        this.objectMapper = objectMapper;
    }

    public ResponseEntity<FreeStyleProject> getJob(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<FreeStyleProject>(objectMapper.readValue("{  \"color\" : \"color\",  \"displayName\" : \"displayName\",  \"lastSuccessfulBuild\" : {    \"queueId\" : 5,    \"displayName\" : \"displayName\",    \"keepLog\" : true,    \"description\" : \"description\",    \"fullDisplayName\" : \"fullDisplayName\",    \"estimatedDuration\" : 5,    \"url\" : \"url\",    \"building\" : true,    \"changeSet\" : {      \"kind\" : \"kind\",      \"_class\" : \"_class\"    },    \"duration\" : 1,    \"result\" : \"result\",    \"number\" : 6,    \"executor\" : \"executor\",    \"builtOn\" : \"builtOn\",    \"_class\" : \"_class\",    \"id\" : \"id\",    \"actions\" : [ {      \"causes\" : [ {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      }, {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      } ],      \"_class\" : \"_class\"    }, {      \"causes\" : [ {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      }, {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      } ],      \"_class\" : \"_class\"    } ],    \"timestamp\" : 2  },  \"description\" : \"description\",  \"fullDisplayName\" : \"fullDisplayName\",  \"lastUnstableBuild\" : \"lastUnstableBuild\",  \"queueItem\" : \"queueItem\",  \"buildable\" : true,  \"firstBuild\" : {    \"queueId\" : 5,    \"displayName\" : \"displayName\",    \"keepLog\" : true,    \"description\" : \"description\",    \"fullDisplayName\" : \"fullDisplayName\",    \"estimatedDuration\" : 5,    \"url\" : \"url\",    \"building\" : true,    \"changeSet\" : {      \"kind\" : \"kind\",      \"_class\" : \"_class\"    },    \"duration\" : 1,    \"result\" : \"result\",    \"number\" : 6,    \"executor\" : \"executor\",    \"builtOn\" : \"builtOn\",    \"_class\" : \"_class\",    \"id\" : \"id\",    \"actions\" : [ {      \"causes\" : [ {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      }, {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      } ],      \"_class\" : \"_class\"    }, {      \"causes\" : [ {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      }, {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      } ],      \"_class\" : \"_class\"    } ],    \"timestamp\" : 2  },  \"lastFailedBuild\" : \"lastFailedBuild\",  \"lastBuild\" : {    \"queueId\" : 5,    \"displayName\" : \"displayName\",    \"keepLog\" : true,    \"description\" : \"description\",    \"fullDisplayName\" : \"fullDisplayName\",    \"estimatedDuration\" : 5,    \"url\" : \"url\",    \"building\" : true,    \"changeSet\" : {      \"kind\" : \"kind\",      \"_class\" : \"_class\"    },    \"duration\" : 1,    \"result\" : \"result\",    \"number\" : 6,    \"executor\" : \"executor\",    \"builtOn\" : \"builtOn\",    \"_class\" : \"_class\",    \"id\" : \"id\",    \"actions\" : [ {      \"causes\" : [ {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      }, {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      } ],      \"_class\" : \"_class\"    }, {      \"causes\" : [ {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      }, {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      } ],      \"_class\" : \"_class\"    } ],    \"timestamp\" : 2  },  \"nextBuildNumber\" : 9,  \"builds\" : [ {    \"queueId\" : 5,    \"displayName\" : \"displayName\",    \"keepLog\" : true,    \"description\" : \"description\",    \"fullDisplayName\" : \"fullDisplayName\",    \"estimatedDuration\" : 5,    \"url\" : \"url\",    \"building\" : true,    \"changeSet\" : {      \"kind\" : \"kind\",      \"_class\" : \"_class\"    },    \"duration\" : 1,    \"result\" : \"result\",    \"number\" : 6,    \"executor\" : \"executor\",    \"builtOn\" : \"builtOn\",    \"_class\" : \"_class\",    \"id\" : \"id\",    \"actions\" : [ {      \"causes\" : [ {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      }, {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      } ],      \"_class\" : \"_class\"    }, {      \"causes\" : [ {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      }, {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      } ],      \"_class\" : \"_class\"    } ],    \"timestamp\" : 2  }, {    \"queueId\" : 5,    \"displayName\" : \"displayName\",    \"keepLog\" : true,    \"description\" : \"description\",    \"fullDisplayName\" : \"fullDisplayName\",    \"estimatedDuration\" : 5,    \"url\" : \"url\",    \"building\" : true,    \"changeSet\" : {      \"kind\" : \"kind\",      \"_class\" : \"_class\"    },    \"duration\" : 1,    \"result\" : \"result\",    \"number\" : 6,    \"executor\" : \"executor\",    \"builtOn\" : \"builtOn\",    \"_class\" : \"_class\",    \"id\" : \"id\",    \"actions\" : [ {      \"causes\" : [ {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      }, {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      } ],      \"_class\" : \"_class\"    }, {      \"causes\" : [ {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      }, {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      } ],      \"_class\" : \"_class\"    } ],    \"timestamp\" : 2  } ],  \"scm\" : {    \"_class\" : \"_class\"  },  \"keepDependencies\" : true,  \"displayNameOrNull\" : \"displayNameOrNull\",  \"inQueue\" : true,  \"lastCompletedBuild\" : {    \"queueId\" : 5,    \"displayName\" : \"displayName\",    \"keepLog\" : true,    \"description\" : \"description\",    \"fullDisplayName\" : \"fullDisplayName\",    \"estimatedDuration\" : 5,    \"url\" : \"url\",    \"building\" : true,    \"changeSet\" : {      \"kind\" : \"kind\",      \"_class\" : \"_class\"    },    \"duration\" : 1,    \"result\" : \"result\",    \"number\" : 6,    \"executor\" : \"executor\",    \"builtOn\" : \"builtOn\",    \"_class\" : \"_class\",    \"id\" : \"id\",    \"actions\" : [ {      \"causes\" : [ {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      }, {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      } ],      \"_class\" : \"_class\"    }, {      \"causes\" : [ {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      }, {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      } ],      \"_class\" : \"_class\"    } ],    \"timestamp\" : 2  },  \"fullName\" : \"fullName\",  \"healthReport\" : [ {    \"score\" : 7,    \"description\" : \"description\",    \"iconClassName\" : \"iconClassName\",    \"iconUrl\" : \"iconUrl\",    \"_class\" : \"_class\"  }, {    \"score\" : 7,    \"description\" : \"description\",    \"iconClassName\" : \"iconClassName\",    \"iconUrl\" : \"iconUrl\",    \"_class\" : \"_class\"  } ],  \"lastStableBuild\" : {    \"queueId\" : 5,    \"displayName\" : \"displayName\",    \"keepLog\" : true,    \"description\" : \"description\",    \"fullDisplayName\" : \"fullDisplayName\",    \"estimatedDuration\" : 5,    \"url\" : \"url\",    \"building\" : true,    \"changeSet\" : {      \"kind\" : \"kind\",      \"_class\" : \"_class\"    },    \"duration\" : 1,    \"result\" : \"result\",    \"number\" : 6,    \"executor\" : \"executor\",    \"builtOn\" : \"builtOn\",    \"_class\" : \"_class\",    \"id\" : \"id\",    \"actions\" : [ {      \"causes\" : [ {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      }, {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      } ],      \"_class\" : \"_class\"    }, {      \"causes\" : [ {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      }, {        \"_class\" : \"_class\",        \"shortDescription\" : \"shortDescription\",        \"userName\" : \"userName\",        \"userId\" : \"userId\"      } ],      \"_class\" : \"_class\"    } ],    \"timestamp\" : 2  },  \"lastUnsuccessfulBuild\" : \"lastUnsuccessfulBuild\",  \"url\" : \"url\",  \"concurrentBuild\" : true,  \"name\" : \"name\",  \"_class\" : \"_class\",  \"actions\" : [ {    \"_class\" : \"_class\"  }, {    \"_class\" : \"_class\"  } ]}", FreeStyleProject.class), HttpStatus.OK);
        }

        return new ResponseEntity<FreeStyleProject>(HttpStatus.OK);
    }

    public ResponseEntity<String> getJobConfig(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("")) {
            return new ResponseEntity<String>(objectMapper.readValue("", String.class), HttpStatus.OK);
        }

        return new ResponseEntity<String>(HttpStatus.OK);
    }

    public ResponseEntity<FreeStyleBuild> getJobLastBuild(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<FreeStyleBuild>(objectMapper.readValue("{  \"queueId\" : 5,  \"displayName\" : \"displayName\",  \"keepLog\" : true,  \"description\" : \"description\",  \"fullDisplayName\" : \"fullDisplayName\",  \"estimatedDuration\" : 5,  \"url\" : \"url\",  \"building\" : true,  \"changeSet\" : {    \"kind\" : \"kind\",    \"_class\" : \"_class\"  },  \"duration\" : 1,  \"result\" : \"result\",  \"number\" : 6,  \"executor\" : \"executor\",  \"builtOn\" : \"builtOn\",  \"_class\" : \"_class\",  \"id\" : \"id\",  \"actions\" : [ {    \"causes\" : [ {      \"_class\" : \"_class\",      \"shortDescription\" : \"shortDescription\",      \"userName\" : \"userName\",      \"userId\" : \"userId\"    }, {      \"_class\" : \"_class\",      \"shortDescription\" : \"shortDescription\",      \"userName\" : \"userName\",      \"userId\" : \"userId\"    } ],    \"_class\" : \"_class\"  }, {    \"causes\" : [ {      \"_class\" : \"_class\",      \"shortDescription\" : \"shortDescription\",      \"userName\" : \"userName\",      \"userId\" : \"userId\"    }, {      \"_class\" : \"_class\",      \"shortDescription\" : \"shortDescription\",      \"userName\" : \"userName\",      \"userId\" : \"userId\"    } ],    \"_class\" : \"_class\"  } ],  \"timestamp\" : 2}", FreeStyleBuild.class), HttpStatus.OK);
        }

        return new ResponseEntity<FreeStyleBuild>(HttpStatus.OK);
    }

    public ResponseEntity<Void> getJobProgressiveText(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
        @ApiParam(value = "Build number",required=true ) @PathVariable("number") String number,
         @NotNull@ApiParam(value = "Starting point of progressive text output", required = true) @RequestParam(value = "start", required = true) String start,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

    public ResponseEntity<Void> postJobBuild(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
         @NotNull@ApiParam(value = "", required = true) @RequestParam(value = "json", required = true) String json,
        @ApiParam(value = "") @RequestParam(value = "token", required = false) String token,
        @ApiParam(value = "CSRF protection token" ) @RequestHeader(value="Jenkins-Crumb", required=false) String jenkinsCrumb,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

    public ResponseEntity<Void> postJobConfig(@ApiParam(value = "Name of the job",required=true ) @PathVariable("name") String name,
        @ApiParam(value = "Job configuration in config.xml format" ,required=true )  @Valid @RequestBody String body,
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

}
