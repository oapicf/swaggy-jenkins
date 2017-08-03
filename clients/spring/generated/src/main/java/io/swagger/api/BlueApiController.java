package io.swagger.api;

import io.swagger.model.BranchImpl;
import io.swagger.model.FavoriteImpl;
import io.swagger.model.GithubScm;
import io.swagger.model.MultibranchPipeline;
import io.swagger.model.Organisation;
import io.swagger.model.Organisations;
import io.swagger.model.Pipeline;
import io.swagger.model.PipelineActivities;
import io.swagger.model.PipelineFolderImpl;
import io.swagger.model.PipelineImpl;
import io.swagger.model.PipelineQueue;
import io.swagger.model.PipelineRun;
import io.swagger.model.PipelineRunNode;
import io.swagger.model.PipelineRunNodeSteps;
import io.swagger.model.PipelineRunNodes;
import io.swagger.model.PipelineRuns;
import io.swagger.model.PipelineStepImpl;
import io.swagger.model.Pipelines;
import io.swagger.model.QueueItemImpl;
import io.swagger.model.ScmOrganisations;
import io.swagger.model.User;
import io.swagger.model.UserFavorites;

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
public class BlueApiController implements BlueApi {
    private final ObjectMapper objectMapper;

    public BlueApiController(ObjectMapper objectMapper) {
        this.objectMapper = objectMapper;
    }

    public ResponseEntity<Void> deletePipelineQueueItem(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the queue item",required=true ) @PathVariable("queue") String queue,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

    public ResponseEntity<User> getAuthenticatedUser(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<User>(objectMapper.readValue("{  \"name\" : \"name\",  \"fullName\" : \"fullName\",  \"_class\" : \"_class\",  \"id\" : \"id\",  \"email\" : \"email\"}", User.class), HttpStatus.OK);
        }

        return new ResponseEntity<User>(HttpStatus.OK);
    }

    public ResponseEntity<String> getClasses(@ApiParam(value = "Name of the class",required=true ) @PathVariable("class") String propertyClass,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<String>(objectMapper.readValue("\"\"", String.class), HttpStatus.OK);
        }

        return new ResponseEntity<String>(HttpStatus.OK);
    }

    public ResponseEntity<Organisation> getOrganisation(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<Organisation>(objectMapper.readValue("{  \"name\" : \"name\",  \"_class\" : \"_class\"}", Organisation.class), HttpStatus.OK);
        }

        return new ResponseEntity<Organisation>(HttpStatus.OK);
    }

    public ResponseEntity<Organisations> getOrganisations(@RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<Organisations>(objectMapper.readValue("\"\"", Organisations.class), HttpStatus.OK);
        }

        return new ResponseEntity<Organisations>(HttpStatus.OK);
    }

    public ResponseEntity<Pipeline> getPipeline(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<Pipeline>(objectMapper.readValue("{  \"weatherScore\" : 0,  \"latestRun\" : {    \"runSummary\" : \"runSummary\",    \"durationInMillis\" : 5,    \"commitId\" : \"commitId\",    \"type\" : \"type\",    \"pipeline\" : \"pipeline\",    \"result\" : \"result\",    \"organization\" : \"organization\",    \"estimatedDurationInMillis\" : 5,    \"enQueueTime\" : \"enQueueTime\",    \"startTime\" : \"startTime\",    \"endTime\" : \"endTime\",    \"id\" : \"id\",    \"state\" : \"state\",    \"_class\" : \"_class\",    \"artifacts\" : [ {      \"size\" : 1,      \"name\" : \"name\",      \"_class\" : \"_class\",      \"url\" : \"url\"    }, {      \"size\" : 1,      \"name\" : \"name\",      \"_class\" : \"_class\",      \"url\" : \"url\"    } ]  },  \"displayName\" : \"displayName\",  \"organization\" : \"organization\",  \"name\" : \"name\",  \"estimatedDurationInMillis\" : 6,  \"fullName\" : \"fullName\",  \"_class\" : \"_class\"}", Pipeline.class), HttpStatus.OK);
        }

        return new ResponseEntity<Pipeline>(HttpStatus.OK);
    }

    public ResponseEntity<PipelineActivities> getPipelineActivities(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<PipelineActivities>(objectMapper.readValue("\"\"", PipelineActivities.class), HttpStatus.OK);
        }

        return new ResponseEntity<PipelineActivities>(HttpStatus.OK);
    }

    public ResponseEntity<BranchImpl> getPipelineBranch(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the branch",required=true ) @PathVariable("branch") String branch,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<BranchImpl>(objectMapper.readValue("{  \"weatherScore\" : 6,  \"latestRun\" : {    \"runSummary\" : \"runSummary\",    \"_links\" : {      \"nodes\" : {        \"_class\" : \"_class\",        \"href\" : \"href\"      },      \"log\" : {        \"_class\" : \"_class\",        \"href\" : \"href\"      },      \"self\" : {        \"_class\" : \"_class\",        \"href\" : \"href\"      },      \"_class\" : \"_class\",      \"actions\" : {        \"_class\" : \"_class\",        \"href\" : \"href\"      },      \"steps\" : {        \"_class\" : \"_class\",        \"href\" : \"href\"      }    },    \"durationInMillis\" : 1,    \"commitId\" : \"commitId\",    \"type\" : \"type\",    \"pipeline\" : \"pipeline\",    \"result\" : \"result\",    \"organization\" : \"organization\",    \"enQueueTime\" : \"enQueueTime\",    \"estimatedDurationInMillis\" : 5,    \"startTime\" : \"startTime\",    \"_class\" : \"_class\",    \"endTime\" : \"endTime\",    \"id\" : \"id\",    \"state\" : \"state\"  },  \"_links\" : {    \"self\" : {      \"_class\" : \"_class\",      \"href\" : \"href\"    },    \"_class\" : \"_class\",    \"actions\" : {      \"_class\" : \"_class\",      \"href\" : \"href\"    },    \"runs\" : {      \"_class\" : \"_class\",      \"href\" : \"href\"    },    \"queue\" : {      \"_class\" : \"_class\",      \"href\" : \"href\"    }  },  \"displayName\" : \"displayName\",  \"fullDisplayName\" : \"fullDisplayName\",  \"fullName\" : \"fullName\",  \"pullRequest\" : \"pullRequest\",  \"permissions\" : {    \"read\" : true,    \"stop\" : true,    \"start\" : true,    \"create\" : true,    \"_class\" : \"_class\"  },  \"organization\" : \"organization\",  \"estimatedDurationInMillis\" : 0,  \"name\" : \"name\",  \"_class\" : \"_class\",  \"parameters\" : [ {    \"name\" : \"name\",    \"description\" : \"description\",    \"_class\" : \"_class\",    \"type\" : \"type\",    \"defaultParameterValue\" : {      \"name\" : \"name\",      \"_class\" : \"_class\",      \"value\" : \"value\"    }  }, {    \"name\" : \"name\",    \"description\" : \"description\",    \"_class\" : \"_class\",    \"type\" : \"type\",    \"defaultParameterValue\" : {      \"name\" : \"name\",      \"_class\" : \"_class\",      \"value\" : \"value\"    }  } ]}", BranchImpl.class), HttpStatus.OK);
        }

        return new ResponseEntity<BranchImpl>(HttpStatus.OK);
    }

    public ResponseEntity<PipelineRun> getPipelineBranchRun(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the branch",required=true ) @PathVariable("branch") String branch,
        @ApiParam(value = "Name of the run",required=true ) @PathVariable("run") String run,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<PipelineRun>(objectMapper.readValue("{  \"runSummary\" : \"runSummary\",  \"durationInMillis\" : 6,  \"commitId\" : \"commitId\",  \"type\" : \"type\",  \"pipeline\" : \"pipeline\",  \"result\" : \"result\",  \"organization\" : \"organization\",  \"estimatedDurationInMillis\" : 1,  \"enQueueTime\" : \"enQueueTime\",  \"startTime\" : \"startTime\",  \"_class\" : \"_class\",  \"endTime\" : \"endTime\",  \"id\" : \"id\",  \"state\" : \"state\",  \"artifacts\" : [ {    \"size\" : 0,    \"name\" : \"name\",    \"_class\" : \"_class\",    \"url\" : \"url\"  }, {    \"size\" : 0,    \"name\" : \"name\",    \"_class\" : \"_class\",    \"url\" : \"url\"  } ]}", PipelineRun.class), HttpStatus.OK);
        }

        return new ResponseEntity<PipelineRun>(HttpStatus.OK);
    }

    public ResponseEntity<MultibranchPipeline> getPipelineBranches(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<MultibranchPipeline>(objectMapper.readValue("{  \"weatherScore\" : 6,  \"latestRun\" : \"latestRun\",  \"displayName\" : \"displayName\",  \"totalNumberOfPullRequests\" : 9,  \"numberOfFailingPullRequests\" : 5,  \"branchNames\" : [ \"branchNames\", \"branchNames\" ],  \"organization\" : \"organization\",  \"totalNumberOfBranches\" : 7,  \"estimatedDurationInMillis\" : 0,  \"name\" : \"name\",  \"numberOfSuccessfulPullRequests\" : 2,  \"numberOfSuccessfulBranches\" : 5,  \"numberOfFailingBranches\" : 1,  \"_class\" : \"_class\"}", MultibranchPipeline.class), HttpStatus.OK);
        }

        return new ResponseEntity<MultibranchPipeline>(HttpStatus.OK);
    }

    public ResponseEntity<PipelineFolderImpl> getPipelineFolder(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the folder",required=true ) @PathVariable("folder") String folder,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<PipelineFolderImpl>(objectMapper.readValue("{  \"numberOfPipelines\" : 6,  \"displayName\" : \"displayName\",  \"numberOfFolders\" : 0,  \"organization\" : \"organization\",  \"name\" : \"name\",  \"fullName\" : \"fullName\",  \"_class\" : \"_class\"}", PipelineFolderImpl.class), HttpStatus.OK);
        }

        return new ResponseEntity<PipelineFolderImpl>(HttpStatus.OK);
    }

    public ResponseEntity<PipelineImpl> getPipelineFolderPipeline(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the folder",required=true ) @PathVariable("folder") String folder,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<PipelineImpl>(objectMapper.readValue("{  \"weatherScore\" : 6,  \"latestRun\" : \"latestRun\",  \"_links\" : {    \"self\" : {      \"_class\" : \"_class\",      \"href\" : \"href\"    },    \"_class\" : \"_class\",    \"runs\" : {      \"_class\" : \"_class\",      \"href\" : \"href\"    },    \"actions\" : {      \"_class\" : \"_class\",      \"href\" : \"href\"    },    \"queue\" : {      \"_class\" : \"_class\",      \"href\" : \"href\"    }  },  \"displayName\" : \"displayName\",  \"organization\" : \"organization\",  \"estimatedDurationInMillis\" : 0,  \"name\" : \"name\",  \"fullName\" : \"fullName\",  \"_class\" : \"_class\"}", PipelineImpl.class), HttpStatus.OK);
        }

        return new ResponseEntity<PipelineImpl>(HttpStatus.OK);
    }

    public ResponseEntity<PipelineQueue> getPipelineQueue(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<PipelineQueue>(objectMapper.readValue("\"\"", PipelineQueue.class), HttpStatus.OK);
        }

        return new ResponseEntity<PipelineQueue>(HttpStatus.OK);
    }

    public ResponseEntity<PipelineRun> getPipelineRun(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the run",required=true ) @PathVariable("run") String run,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<PipelineRun>(objectMapper.readValue("{  \"runSummary\" : \"runSummary\",  \"durationInMillis\" : 6,  \"commitId\" : \"commitId\",  \"type\" : \"type\",  \"pipeline\" : \"pipeline\",  \"result\" : \"result\",  \"organization\" : \"organization\",  \"estimatedDurationInMillis\" : 1,  \"enQueueTime\" : \"enQueueTime\",  \"startTime\" : \"startTime\",  \"_class\" : \"_class\",  \"endTime\" : \"endTime\",  \"id\" : \"id\",  \"state\" : \"state\",  \"artifacts\" : [ {    \"size\" : 0,    \"name\" : \"name\",    \"_class\" : \"_class\",    \"url\" : \"url\"  }, {    \"size\" : 0,    \"name\" : \"name\",    \"_class\" : \"_class\",    \"url\" : \"url\"  } ]}", PipelineRun.class), HttpStatus.OK);
        }

        return new ResponseEntity<PipelineRun>(HttpStatus.OK);
    }

    public ResponseEntity<String> getPipelineRunLog(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the run",required=true ) @PathVariable("run") String run,
        @ApiParam(value = "Start position of the log") @RequestParam(value = "start", required = false) Integer start,
        @ApiParam(value = "Set to true in order to download the file, otherwise it's passed as a response body") @RequestParam(value = "download", required = false) Boolean download,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<String>(objectMapper.readValue("\"\"", String.class), HttpStatus.OK);
        }

        return new ResponseEntity<String>(HttpStatus.OK);
    }

    public ResponseEntity<PipelineRunNode> getPipelineRunNode(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the run",required=true ) @PathVariable("run") String run,
        @ApiParam(value = "Name of the node",required=true ) @PathVariable("node") String node,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<PipelineRunNode>(objectMapper.readValue("{  \"result\" : \"result\",  \"durationInMillis\" : 0,  \"displayName\" : \"displayName\",  \"edges\" : [ {    \"id\" : \"id\",    \"_class\" : \"_class\"  }, {    \"id\" : \"id\",    \"_class\" : \"_class\"  } ],  \"startTime\" : \"startTime\",  \"_class\" : \"_class\",  \"id\" : \"id\",  \"state\" : \"state\"}", PipelineRunNode.class), HttpStatus.OK);
        }

        return new ResponseEntity<PipelineRunNode>(HttpStatus.OK);
    }

    public ResponseEntity<PipelineStepImpl> getPipelineRunNodeStep(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the run",required=true ) @PathVariable("run") String run,
        @ApiParam(value = "Name of the node",required=true ) @PathVariable("node") String node,
        @ApiParam(value = "Name of the step",required=true ) @PathVariable("step") String step,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<PipelineStepImpl>(objectMapper.readValue("{  \"result\" : \"result\",  \"input\" : {    \"submitter\" : \"submitter\",    \"_links\" : {      \"self\" : {        \"_class\" : \"_class\",        \"href\" : \"href\"      },      \"_class\" : \"_class\"    },    \"_class\" : \"_class\",    \"id\" : \"id\",    \"message\" : \"message\",    \"ok\" : \"ok\",    \"parameters\" : [ {      \"name\" : \"name\",      \"description\" : \"description\",      \"_class\" : \"_class\",      \"type\" : \"type\",      \"defaultParameterValue\" : {        \"name\" : \"name\",        \"_class\" : \"_class\",        \"value\" : \"value\"      }    }, {      \"name\" : \"name\",      \"description\" : \"description\",      \"_class\" : \"_class\",      \"type\" : \"type\",      \"defaultParameterValue\" : {        \"name\" : \"name\",        \"_class\" : \"_class\",        \"value\" : \"value\"      }    } ]  },  \"_links\" : {    \"self\" : {      \"_class\" : \"_class\",      \"href\" : \"href\"    },    \"_class\" : \"_class\",    \"actions\" : {      \"_class\" : \"_class\",      \"href\" : \"href\"    }  },  \"durationInMillis\" : 0,  \"displayName\" : \"displayName\",  \"startTime\" : \"startTime\",  \"_class\" : \"_class\",  \"id\" : \"id\",  \"state\" : \"state\"}", PipelineStepImpl.class), HttpStatus.OK);
        }

        return new ResponseEntity<PipelineStepImpl>(HttpStatus.OK);
    }

    public ResponseEntity<String> getPipelineRunNodeStepLog(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the run",required=true ) @PathVariable("run") String run,
        @ApiParam(value = "Name of the node",required=true ) @PathVariable("node") String node,
        @ApiParam(value = "Name of the step",required=true ) @PathVariable("step") String step,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<String>(objectMapper.readValue("\"\"", String.class), HttpStatus.OK);
        }

        return new ResponseEntity<String>(HttpStatus.OK);
    }

    public ResponseEntity<PipelineRunNodeSteps> getPipelineRunNodeSteps(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the run",required=true ) @PathVariable("run") String run,
        @ApiParam(value = "Name of the node",required=true ) @PathVariable("node") String node,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<PipelineRunNodeSteps>(objectMapper.readValue("\"\"", PipelineRunNodeSteps.class), HttpStatus.OK);
        }

        return new ResponseEntity<PipelineRunNodeSteps>(HttpStatus.OK);
    }

    public ResponseEntity<PipelineRunNodes> getPipelineRunNodes(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the run",required=true ) @PathVariable("run") String run,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<PipelineRunNodes>(objectMapper.readValue("\"\"", PipelineRunNodes.class), HttpStatus.OK);
        }

        return new ResponseEntity<PipelineRunNodes>(HttpStatus.OK);
    }

    public ResponseEntity<PipelineRuns> getPipelineRuns(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<PipelineRuns>(objectMapper.readValue("\"\"", PipelineRuns.class), HttpStatus.OK);
        }

        return new ResponseEntity<PipelineRuns>(HttpStatus.OK);
    }

    public ResponseEntity<Pipelines> getPipelines(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<Pipelines>(objectMapper.readValue("\"\"", Pipelines.class), HttpStatus.OK);
        }

        return new ResponseEntity<Pipelines>(HttpStatus.OK);
    }

    public ResponseEntity<GithubScm> getSCM(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of SCM",required=true ) @PathVariable("scm") String scm,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<GithubScm>(objectMapper.readValue("{  \"_links\" : {    \"self\" : {      \"_class\" : \"_class\",      \"href\" : \"href\"    },    \"_class\" : \"_class\"  },  \"credentialId\" : \"credentialId\",  \"_class\" : \"_class\",  \"id\" : \"id\",  \"uri\" : \"uri\"}", GithubScm.class), HttpStatus.OK);
        }

        return new ResponseEntity<GithubScm>(HttpStatus.OK);
    }

    public ResponseEntity<ScmOrganisations> getSCMOrganisationRepositories(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of SCM",required=true ) @PathVariable("scm") String scm,
        @ApiParam(value = "Name of the SCM organization",required=true ) @PathVariable("scmOrganisation") String scmOrganisation,
        @ApiParam(value = "Credential ID") @RequestParam(value = "credentialId", required = false) String credentialId,
        @ApiParam(value = "Number of items in a page") @RequestParam(value = "pageSize", required = false) Integer pageSize,
        @ApiParam(value = "Page number") @RequestParam(value = "pageNumber", required = false) Integer pageNumber,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<ScmOrganisations>(objectMapper.readValue("\"\"", ScmOrganisations.class), HttpStatus.OK);
        }

        return new ResponseEntity<ScmOrganisations>(HttpStatus.OK);
    }

    public ResponseEntity<ScmOrganisations> getSCMOrganisationRepository(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of SCM",required=true ) @PathVariable("scm") String scm,
        @ApiParam(value = "Name of the SCM organization",required=true ) @PathVariable("scmOrganisation") String scmOrganisation,
        @ApiParam(value = "Name of the SCM repository",required=true ) @PathVariable("repository") String repository,
        @ApiParam(value = "Credential ID") @RequestParam(value = "credentialId", required = false) String credentialId,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<ScmOrganisations>(objectMapper.readValue("\"\"", ScmOrganisations.class), HttpStatus.OK);
        }

        return new ResponseEntity<ScmOrganisations>(HttpStatus.OK);
    }

    public ResponseEntity<ScmOrganisations> getSCMOrganisations(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of SCM",required=true ) @PathVariable("scm") String scm,
        @ApiParam(value = "Credential ID") @RequestParam(value = "credentialId", required = false) String credentialId,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<ScmOrganisations>(objectMapper.readValue("\"\"", ScmOrganisations.class), HttpStatus.OK);
        }

        return new ResponseEntity<ScmOrganisations>(HttpStatus.OK);
    }

    public ResponseEntity<User> getUser(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the user",required=true ) @PathVariable("user") String user,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<User>(objectMapper.readValue("{  \"name\" : \"name\",  \"fullName\" : \"fullName\",  \"_class\" : \"_class\",  \"id\" : \"id\",  \"email\" : \"email\"}", User.class), HttpStatus.OK);
        }

        return new ResponseEntity<User>(HttpStatus.OK);
    }

    public ResponseEntity<UserFavorites> getUserFavorites(@ApiParam(value = "Name of the user",required=true ) @PathVariable("user") String user,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<UserFavorites>(objectMapper.readValue("\"\"", UserFavorites.class), HttpStatus.OK);
        }

        return new ResponseEntity<UserFavorites>(HttpStatus.OK);
    }

    public ResponseEntity<User> getUsers(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<User>(objectMapper.readValue("{  \"name\" : \"name\",  \"fullName\" : \"fullName\",  \"_class\" : \"_class\",  \"id\" : \"id\",  \"email\" : \"email\"}", User.class), HttpStatus.OK);
        }

        return new ResponseEntity<User>(HttpStatus.OK);
    }

    public ResponseEntity<QueueItemImpl> postPipelineRun(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the run",required=true ) @PathVariable("run") String run,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<QueueItemImpl>(objectMapper.readValue("{  \"pipeline\" : \"pipeline\",  \"expectedBuildNumber\" : 0,  \"queuedTime\" : 6,  \"_class\" : \"_class\",  \"id\" : \"id\"}", QueueItemImpl.class), HttpStatus.OK);
        }

        return new ResponseEntity<QueueItemImpl>(HttpStatus.OK);
    }

    public ResponseEntity<QueueItemImpl> postPipelineRuns(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<QueueItemImpl>(objectMapper.readValue("{  \"pipeline\" : \"pipeline\",  \"expectedBuildNumber\" : 0,  \"queuedTime\" : 6,  \"_class\" : \"_class\",  \"id\" : \"id\"}", QueueItemImpl.class), HttpStatus.OK);
        }

        return new ResponseEntity<QueueItemImpl>(HttpStatus.OK);
    }

    public ResponseEntity<FavoriteImpl> putPipelineFavorite(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite" ,required=true )  @Valid @RequestBody String body,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<FavoriteImpl>(objectMapper.readValue("{  \"item\" : {    \"weatherScore\" : 6,    \"latestRun\" : \"latestRun\",    \"_links\" : {      \"self\" : {        \"_class\" : \"_class\",        \"href\" : \"href\"      },      \"_class\" : \"_class\",      \"runs\" : {        \"_class\" : \"_class\",        \"href\" : \"href\"      },      \"actions\" : {        \"_class\" : \"_class\",        \"href\" : \"href\"      },      \"queue\" : {        \"_class\" : \"_class\",        \"href\" : \"href\"      }    },    \"displayName\" : \"displayName\",    \"organization\" : \"organization\",    \"estimatedDurationInMillis\" : 0,    \"name\" : \"name\",    \"fullName\" : \"fullName\",    \"_class\" : \"_class\"  },  \"_links\" : {    \"self\" : {      \"_class\" : \"_class\",      \"href\" : \"href\"    },    \"_class\" : \"_class\"  },  \"_class\" : \"_class\"}", FavoriteImpl.class), HttpStatus.OK);
        }

        return new ResponseEntity<FavoriteImpl>(HttpStatus.OK);
    }

    public ResponseEntity<PipelineRun> putPipelineRun(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the run",required=true ) @PathVariable("run") String run,
        @ApiParam(value = "Set to true to make blocking stop, default: false") @RequestParam(value = "blocking", required = false) String blocking,
        @ApiParam(value = "Timeout in seconds, default: 10 seconds") @RequestParam(value = "timeOutInSecs", required = false) Integer timeOutInSecs,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<PipelineRun>(objectMapper.readValue("{  \"runSummary\" : \"runSummary\",  \"durationInMillis\" : 6,  \"commitId\" : \"commitId\",  \"type\" : \"type\",  \"pipeline\" : \"pipeline\",  \"result\" : \"result\",  \"organization\" : \"organization\",  \"estimatedDurationInMillis\" : 1,  \"enQueueTime\" : \"enQueueTime\",  \"startTime\" : \"startTime\",  \"_class\" : \"_class\",  \"endTime\" : \"endTime\",  \"id\" : \"id\",  \"state\" : \"state\",  \"artifacts\" : [ {    \"size\" : 0,    \"name\" : \"name\",    \"_class\" : \"_class\",    \"url\" : \"url\"  }, {    \"size\" : 0,    \"name\" : \"name\",    \"_class\" : \"_class\",    \"url\" : \"url\"  } ]}", PipelineRun.class), HttpStatus.OK);
        }

        return new ResponseEntity<PipelineRun>(HttpStatus.OK);
    }

    public ResponseEntity<String> search( @NotNull@ApiParam(value = "Query string", required = true) @RequestParam(value = "q", required = true) String q,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<String>(objectMapper.readValue("\"\"", String.class), HttpStatus.OK);
        }

        return new ResponseEntity<String>(HttpStatus.OK);
    }

    public ResponseEntity<String> searchClasses( @NotNull@ApiParam(value = "Query string containing an array of class names", required = true) @RequestParam(value = "q", required = true) String q,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<String>(objectMapper.readValue("\"\"", String.class), HttpStatus.OK);
        }

        return new ResponseEntity<String>(HttpStatus.OK);
    }

}
