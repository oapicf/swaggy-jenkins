package com.prokarma.pkmst.controller;

import com.prokarma.pkmst.model.BranchImpl;
import com.prokarma.pkmst.model.FavoriteImpl;
import com.prokarma.pkmst.model.GithubOrganization;
import com.prokarma.pkmst.model.GithubScm;
import java.util.List;
import com.prokarma.pkmst.model.MultibranchPipeline;
import com.prokarma.pkmst.model.Organisation;
import com.prokarma.pkmst.model.Pipeline;
import com.prokarma.pkmst.model.PipelineActivity;
import com.prokarma.pkmst.model.PipelineFolderImpl;
import com.prokarma.pkmst.model.PipelineImpl;
import com.prokarma.pkmst.model.PipelineRun;
import com.prokarma.pkmst.model.PipelineRunNode;
import com.prokarma.pkmst.model.PipelineStepImpl;
import com.prokarma.pkmst.model.QueueItemImpl;
import com.prokarma.pkmst.model.User;

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
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2026-02-01T01:24:09.085498338Z[Etc/UTC]", comments = "Generator version: 7.18.0")
@Controller
public class BlueOceanApiController implements BlueOceanApi {
    private final ObjectMapper objectMapper;
@Autowired
    public BlueOceanApiController(ObjectMapper objectMapper) {
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
            return new ResponseEntity<User>(objectMapper.readValue("", User.class), HttpStatus.OK);
        }

        return new ResponseEntity<User>(HttpStatus.OK);
    }

    public ResponseEntity<String> getClasses(@ApiParam(value = "Name of the class",required=true ) @PathVariable("class") String propertyClass,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<String>(HttpStatus.OK);
    }

    public ResponseEntity<String> getJsonWebKey(@ApiParam(value = "Key ID received as part of JWT header field kid",required=true ) @PathVariable("key") Integer key,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<String>(HttpStatus.OK);
    }

    public ResponseEntity<String> getJsonWebToken(@ApiParam(value = "Token expiry time in minutes, default: 30 minutes")  @RequestParam(value = "expiryTimeInMins", required = false) Integer expiryTimeInMins,
        @ApiParam(value = "Maximum token expiry time in minutes, default: 480 minutes")  @RequestParam(value = "maxExpiryTimeInMins", required = false) Integer maxExpiryTimeInMins,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<String>(HttpStatus.OK);
    }

    public ResponseEntity<Organisation> getOrganisation(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<Organisation>(objectMapper.readValue("", Organisation.class), HttpStatus.OK);
        }

        return new ResponseEntity<Organisation>(HttpStatus.OK);
    }

    public ResponseEntity<List<Organisation>> getOrganisations(@RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<List<Organisation>>(objectMapper.readValue("", List.class), HttpStatus.OK);
        }

        return new ResponseEntity<List<Organisation>>(HttpStatus.OK);
    }

    public ResponseEntity<Pipeline> getPipeline(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<Pipeline>(objectMapper.readValue("", Pipeline.class), HttpStatus.OK);
        }

        return new ResponseEntity<Pipeline>(HttpStatus.OK);
    }

    public ResponseEntity<List<PipelineActivity>> getPipelineActivities(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<List<PipelineActivity>>(objectMapper.readValue("", List.class), HttpStatus.OK);
        }

        return new ResponseEntity<List<PipelineActivity>>(HttpStatus.OK);
    }

    public ResponseEntity<BranchImpl> getPipelineBranch(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the branch",required=true ) @PathVariable("branch") String branch,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<BranchImpl>(objectMapper.readValue("", BranchImpl.class), HttpStatus.OK);
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
            return new ResponseEntity<PipelineRun>(objectMapper.readValue("", PipelineRun.class), HttpStatus.OK);
        }

        return new ResponseEntity<PipelineRun>(HttpStatus.OK);
    }

    public ResponseEntity<MultibranchPipeline> getPipelineBranches(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<MultibranchPipeline>(objectMapper.readValue("", MultibranchPipeline.class), HttpStatus.OK);
        }

        return new ResponseEntity<MultibranchPipeline>(HttpStatus.OK);
    }

    public ResponseEntity<PipelineFolderImpl> getPipelineFolder(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the folder",required=true ) @PathVariable("folder") String folder,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<PipelineFolderImpl>(objectMapper.readValue("", PipelineFolderImpl.class), HttpStatus.OK);
        }

        return new ResponseEntity<PipelineFolderImpl>(HttpStatus.OK);
    }

    public ResponseEntity<PipelineImpl> getPipelineFolderPipeline(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the folder",required=true ) @PathVariable("folder") String folder,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<PipelineImpl>(objectMapper.readValue("", PipelineImpl.class), HttpStatus.OK);
        }

        return new ResponseEntity<PipelineImpl>(HttpStatus.OK);
    }

    public ResponseEntity<List<QueueItemImpl>> getPipelineQueue(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<List<QueueItemImpl>>(objectMapper.readValue("", List.class), HttpStatus.OK);
        }

        return new ResponseEntity<List<QueueItemImpl>>(HttpStatus.OK);
    }

    public ResponseEntity<PipelineRun> getPipelineRun(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the run",required=true ) @PathVariable("run") String run,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<PipelineRun>(objectMapper.readValue("", PipelineRun.class), HttpStatus.OK);
        }

        return new ResponseEntity<PipelineRun>(HttpStatus.OK);
    }

    public ResponseEntity<String> getPipelineRunLog(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the run",required=true ) @PathVariable("run") String run,
        @ApiParam(value = "Start position of the log")  @RequestParam(value = "start", required = false) Integer start,
        @ApiParam(value = "Set to true in order to download the file, otherwise it's passed as a response body")  @RequestParam(value = "download", required = false) Boolean download,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<String>(HttpStatus.OK);
    }

    public ResponseEntity<PipelineRunNode> getPipelineRunNode(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the run",required=true ) @PathVariable("run") String run,
        @ApiParam(value = "Name of the node",required=true ) @PathVariable("node") String node,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<PipelineRunNode>(objectMapper.readValue("", PipelineRunNode.class), HttpStatus.OK);
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
            return new ResponseEntity<PipelineStepImpl>(objectMapper.readValue("", PipelineStepImpl.class), HttpStatus.OK);
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
        return new ResponseEntity<String>(HttpStatus.OK);
    }

    public ResponseEntity<List<PipelineStepImpl>> getPipelineRunNodeSteps(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the run",required=true ) @PathVariable("run") String run,
        @ApiParam(value = "Name of the node",required=true ) @PathVariable("node") String node,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<List<PipelineStepImpl>>(objectMapper.readValue("", List.class), HttpStatus.OK);
        }

        return new ResponseEntity<List<PipelineStepImpl>>(HttpStatus.OK);
    }

    public ResponseEntity<List<PipelineRunNode>> getPipelineRunNodes(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the run",required=true ) @PathVariable("run") String run,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<List<PipelineRunNode>>(objectMapper.readValue("", List.class), HttpStatus.OK);
        }

        return new ResponseEntity<List<PipelineRunNode>>(HttpStatus.OK);
    }

    public ResponseEntity<List<PipelineRun>> getPipelineRuns(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<List<PipelineRun>>(objectMapper.readValue("", List.class), HttpStatus.OK);
        }

        return new ResponseEntity<List<PipelineRun>>(HttpStatus.OK);
    }

    public ResponseEntity<List<Pipeline>> getPipelines(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<List<Pipeline>>(objectMapper.readValue("", List.class), HttpStatus.OK);
        }

        return new ResponseEntity<List<Pipeline>>(HttpStatus.OK);
    }

    public ResponseEntity<GithubScm> getSCM(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of SCM",required=true ) @PathVariable("scm") String scm,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<GithubScm>(objectMapper.readValue("", GithubScm.class), HttpStatus.OK);
        }

        return new ResponseEntity<GithubScm>(HttpStatus.OK);
    }

    public ResponseEntity<List<GithubOrganization>> getSCMOrganisationRepositories(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of SCM",required=true ) @PathVariable("scm") String scm,
        @ApiParam(value = "Name of the SCM organization",required=true ) @PathVariable("scmOrganisation") String scmOrganisation,
        @ApiParam(value = "Credential ID")  @RequestParam(value = "credentialId", required = false) String credentialId,
        @ApiParam(value = "Number of items in a page")  @RequestParam(value = "pageSize", required = false) Integer pageSize,
        @ApiParam(value = "Page number")  @RequestParam(value = "pageNumber", required = false) Integer pageNumber,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<List<GithubOrganization>>(objectMapper.readValue("", List.class), HttpStatus.OK);
        }

        return new ResponseEntity<List<GithubOrganization>>(HttpStatus.OK);
    }

    public ResponseEntity<List<GithubOrganization>> getSCMOrganisationRepository(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of SCM",required=true ) @PathVariable("scm") String scm,
        @ApiParam(value = "Name of the SCM organization",required=true ) @PathVariable("scmOrganisation") String scmOrganisation,
        @ApiParam(value = "Name of the SCM repository",required=true ) @PathVariable("repository") String repository,
        @ApiParam(value = "Credential ID")  @RequestParam(value = "credentialId", required = false) String credentialId,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<List<GithubOrganization>>(objectMapper.readValue("", List.class), HttpStatus.OK);
        }

        return new ResponseEntity<List<GithubOrganization>>(HttpStatus.OK);
    }

    public ResponseEntity<List<GithubOrganization>> getSCMOrganisations(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of SCM",required=true ) @PathVariable("scm") String scm,
        @ApiParam(value = "Credential ID")  @RequestParam(value = "credentialId", required = false) String credentialId,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<List<GithubOrganization>>(objectMapper.readValue("", List.class), HttpStatus.OK);
        }

        return new ResponseEntity<List<GithubOrganization>>(HttpStatus.OK);
    }

    public ResponseEntity<User> getUser(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the user",required=true ) @PathVariable("user") String user,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<User>(objectMapper.readValue("", User.class), HttpStatus.OK);
        }

        return new ResponseEntity<User>(HttpStatus.OK);
    }

    public ResponseEntity<List<FavoriteImpl>> getUserFavorites(@ApiParam(value = "Name of the user",required=true ) @PathVariable("user") String user,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<List<FavoriteImpl>>(objectMapper.readValue("", List.class), HttpStatus.OK);
        }

        return new ResponseEntity<List<FavoriteImpl>>(HttpStatus.OK);
    }

    public ResponseEntity<User> getUsers(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<User>(objectMapper.readValue("", User.class), HttpStatus.OK);
        }

        return new ResponseEntity<User>(HttpStatus.OK);
    }

    public ResponseEntity<QueueItemImpl> postPipelineRun(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the run",required=true ) @PathVariable("run") String run,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<QueueItemImpl>(objectMapper.readValue("", QueueItemImpl.class), HttpStatus.OK);
        }

        return new ResponseEntity<QueueItemImpl>(HttpStatus.OK);
    }

    public ResponseEntity<QueueItemImpl> postPipelineRuns(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<QueueItemImpl>(objectMapper.readValue("", QueueItemImpl.class), HttpStatus.OK);
        }

        return new ResponseEntity<QueueItemImpl>(HttpStatus.OK);
    }

    public ResponseEntity<FavoriteImpl> putPipelineFavorite(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite" ,required=true )   @RequestBody Boolean body,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<FavoriteImpl>(objectMapper.readValue("", FavoriteImpl.class), HttpStatus.OK);
        }

        return new ResponseEntity<FavoriteImpl>(HttpStatus.OK);
    }

    public ResponseEntity<PipelineRun> putPipelineRun(@ApiParam(value = "Name of the organization",required=true ) @PathVariable("organization") String organization,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the run",required=true ) @PathVariable("run") String run,
        @ApiParam(value = "Set to true to make blocking stop, default: false")  @RequestParam(value = "blocking", required = false) String blocking,
        @ApiParam(value = "Timeout in seconds, default: 10 seconds")  @RequestParam(value = "timeOutInSecs", required = false) Integer timeOutInSecs,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<PipelineRun>(objectMapper.readValue("", PipelineRun.class), HttpStatus.OK);
        }

        return new ResponseEntity<PipelineRun>(HttpStatus.OK);
    }

    public ResponseEntity<String> search(@ApiParam(value = "Query string", required = true)  @RequestParam(value = "q", required = true) String q,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<String>(HttpStatus.OK);
    }

    public ResponseEntity<String> searchClasses(@ApiParam(value = "Query string containing an array of class names", required = true)  @RequestParam(value = "q", required = true) String q,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!
        return new ResponseEntity<String>(HttpStatus.OK);
    }

}
