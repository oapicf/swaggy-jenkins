package io.swagger.api;

import io.swagger.model.GetMultibranchPipeline;
import io.swagger.model.GetOrganisations;
import io.swagger.model.GetPipelines;
import io.swagger.model.IojenkinsblueoceanrestimplpipelineBranchImpl;
import io.swagger.model.IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl;
import io.swagger.model.IojenkinsblueoceanserviceembeddedrestPipelineImpl;
import io.swagger.model.SwaggyjenkinsOrganisation;
import io.swagger.model.SwaggyjenkinsPipeline;
import io.swagger.model.SwaggyjenkinsUser;

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
public class BlueApiController implements BlueApi {



    public ResponseEntity<SwaggyjenkinsUser> getAuthenticatedUser(@ApiParam(value = "Name of the organisation",required=true ) @PathVariable("organisation") String organisation) {
        // do some magic!
        return new ResponseEntity<SwaggyjenkinsUser>(HttpStatus.OK);
    }

    public ResponseEntity<String> getClasses(@ApiParam(value = "Name of the class",required=true ) @PathVariable("class") String propertyClass) {
        // do some magic!
        return new ResponseEntity<String>(HttpStatus.OK);
    }

    public ResponseEntity<SwaggyjenkinsOrganisation> getOrganisation(@ApiParam(value = "Name of the organisation",required=true ) @PathVariable("organisation") String organisation) {
        // do some magic!
        return new ResponseEntity<SwaggyjenkinsOrganisation>(HttpStatus.OK);
    }

    public ResponseEntity<GetOrganisations> getOrganisations() {
        // do some magic!
        return new ResponseEntity<GetOrganisations>(HttpStatus.OK);
    }

    public ResponseEntity<IojenkinsblueoceanrestimplpipelineBranchImpl> getPipelineBranchByOrg(@ApiParam(value = "Name of the organisation",required=true ) @PathVariable("organisation") String organisation,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the branch",required=true ) @PathVariable("branch") String branch) {
        // do some magic!
        return new ResponseEntity<IojenkinsblueoceanrestimplpipelineBranchImpl>(HttpStatus.OK);
    }

    public ResponseEntity<GetMultibranchPipeline> getPipelineBranchesByOrg(@ApiParam(value = "Name of the organisation",required=true ) @PathVariable("organisation") String organisation,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline) {
        // do some magic!
        return new ResponseEntity<GetMultibranchPipeline>(HttpStatus.OK);
    }

    public ResponseEntity<SwaggyjenkinsPipeline> getPipelineByOrg(@ApiParam(value = "Name of the organisation",required=true ) @PathVariable("organisation") String organisation,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline) {
        // do some magic!
        return new ResponseEntity<SwaggyjenkinsPipeline>(HttpStatus.OK);
    }

    public ResponseEntity<IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl> getPipelineFolderByOrg(@ApiParam(value = "Name of the organisation",required=true ) @PathVariable("organisation") String organisation,
        @ApiParam(value = "Name of the folder",required=true ) @PathVariable("folder") String folder) {
        // do some magic!
        return new ResponseEntity<IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl>(HttpStatus.OK);
    }

    public ResponseEntity<IojenkinsblueoceanserviceembeddedrestPipelineImpl> getPipelineFolderByOrg(@ApiParam(value = "Name of the organisation",required=true ) @PathVariable("organisation") String organisation,
        @ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,
        @ApiParam(value = "Name of the folder",required=true ) @PathVariable("folder") String folder) {
        // do some magic!
        return new ResponseEntity<IojenkinsblueoceanserviceembeddedrestPipelineImpl>(HttpStatus.OK);
    }

    public ResponseEntity<GetPipelines> getPipelinesByOrg(@ApiParam(value = "Name of the organisation",required=true ) @PathVariable("organisation") String organisation) {
        // do some magic!
        return new ResponseEntity<GetPipelines>(HttpStatus.OK);
    }

    public ResponseEntity<SwaggyjenkinsUser> getUser(@ApiParam(value = "Name of the organisation",required=true ) @PathVariable("organisation") String organisation,
        @ApiParam(value = "Name of the user",required=true ) @PathVariable("user") String user) {
        // do some magic!
        return new ResponseEntity<SwaggyjenkinsUser>(HttpStatus.OK);
    }

    public ResponseEntity<SwaggyjenkinsUser> getUsers(@ApiParam(value = "Name of the organisation",required=true ) @PathVariable("organisation") String organisation) {
        // do some magic!
        return new ResponseEntity<SwaggyjenkinsUser>(HttpStatus.OK);
    }

    public ResponseEntity<String> search( @NotNull@ApiParam(value = "Query string containing an array of class names", required = true) @RequestParam(value = "q", required = true) String q) {
        // do some magic!
        return new ResponseEntity<String>(HttpStatus.OK);
    }

    public ResponseEntity<String> search( @NotNull@ApiParam(value = "Query string", required = true) @RequestParam(value = "q", required = true) String q) {
        // do some magic!
        return new ResponseEntity<String>(HttpStatus.OK);
    }

}
