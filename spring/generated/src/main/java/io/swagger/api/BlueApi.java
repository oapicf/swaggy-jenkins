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

@Api(value = "blue", description = "the blue API")
public interface BlueApi {

    @ApiOperation(value = "", notes = "Retrieve authenticated user details for an organisation", response = SwaggyjenkinsUser.class, tags={ "blueOcean", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved authenticated user details", response = SwaggyjenkinsUser.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    
    @RequestMapping(value = "/blue/rest/organizations/{organisation}/user/",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<SwaggyjenkinsUser> getAuthenticatedUser(@ApiParam(value = "Name of the organisation",required=true ) @PathVariable("organisation") String organisation);


    @ApiOperation(value = "", notes = "Get a list of class names supported by a given class", response = String.class, tags={ "blueOcean", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved class names", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    
    @RequestMapping(value = "/blue/rest/classes/{class}",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<String> getClasses(@ApiParam(value = "Name of the class",required=true ) @PathVariable("class") String propertyClass);


    @ApiOperation(value = "", notes = "Retrieve organisation details", response = SwaggyjenkinsOrganisation.class, tags={ "blueOcean", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = SwaggyjenkinsOrganisation.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Pipeline cannot be found on Jenkins instance", response = Void.class) })
    
    @RequestMapping(value = "/blue/rest/organizations/{organisation}",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<SwaggyjenkinsOrganisation> getOrganisation(@ApiParam(value = "Name of the organisation",required=true ) @PathVariable("organisation") String organisation);


    @ApiOperation(value = "", notes = "Retrieve all organisations details", response = GetOrganisations.class, tags={ "blueOcean", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipelines details", response = GetOrganisations.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    
    @RequestMapping(value = "/blue/rest/organizations/",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<GetOrganisations> getOrganisations();


    @ApiOperation(value = "", notes = "Retrieve branch details for an organisation pipeline", response = IojenkinsblueoceanrestimplpipelineBranchImpl.class, tags={ "blueOcean", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved branch details", response = IojenkinsblueoceanrestimplpipelineBranchImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    
    @RequestMapping(value = "/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<IojenkinsblueoceanrestimplpipelineBranchImpl> getPipelineBranchByOrg(@ApiParam(value = "Name of the organisation",required=true ) @PathVariable("organisation") String organisation,@ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,@ApiParam(value = "Name of the branch",required=true ) @PathVariable("branch") String branch);


    @ApiOperation(value = "", notes = "Retrieve all branches details for an organisation pipeline", response = GetMultibranchPipeline.class, tags={ "blueOcean", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved all branches details", response = GetMultibranchPipeline.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    
    @RequestMapping(value = "/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<GetMultibranchPipeline> getPipelineBranchesByOrg(@ApiParam(value = "Name of the organisation",required=true ) @PathVariable("organisation") String organisation,@ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline);


    @ApiOperation(value = "", notes = "Retrieve pipeline details for an organisation", response = SwaggyjenkinsPipeline.class, tags={ "blueOcean", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = SwaggyjenkinsPipeline.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class),
        @ApiResponse(code = 404, message = "Pipeline cannot be found on Jenkins instance", response = Void.class) })
    
    @RequestMapping(value = "/blue/rest/organizations/{organisation}/pipelines/{pipeline}",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<SwaggyjenkinsPipeline> getPipelineByOrg(@ApiParam(value = "Name of the organisation",required=true ) @PathVariable("organisation") String organisation,@ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline);


    @ApiOperation(value = "", notes = "Retrieve pipeline folder for an organisation", response = IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.class, tags={ "blueOcean", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved folder details", response = IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    
    @RequestMapping(value = "/blue/rest/organizations/{organisation}/pipelines/{folder}/",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl> getPipelineFolderByOrg(@ApiParam(value = "Name of the organisation",required=true ) @PathVariable("organisation") String organisation,@ApiParam(value = "Name of the folder",required=true ) @PathVariable("folder") String folder);


    @ApiOperation(value = "", notes = "Retrieve pipeline details for an organisation folder", response = IojenkinsblueoceanserviceembeddedrestPipelineImpl.class, tags={ "blueOcean", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = IojenkinsblueoceanserviceembeddedrestPipelineImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    
    @RequestMapping(value = "/blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline}",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<IojenkinsblueoceanserviceembeddedrestPipelineImpl> getPipelineFolderByOrg(@ApiParam(value = "Name of the organisation",required=true ) @PathVariable("organisation") String organisation,@ApiParam(value = "Name of the pipeline",required=true ) @PathVariable("pipeline") String pipeline,@ApiParam(value = "Name of the folder",required=true ) @PathVariable("folder") String folder);


    @ApiOperation(value = "", notes = "Retrieve all pipelines details for an organisation", response = GetPipelines.class, tags={ "blueOcean", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipelines details", response = GetPipelines.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    
    @RequestMapping(value = "/blue/rest/organizations/{organisation}/pipelines/",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<GetPipelines> getPipelinesByOrg(@ApiParam(value = "Name of the organisation",required=true ) @PathVariable("organisation") String organisation);


    @ApiOperation(value = "", notes = "Retrieve user details for an organisation", response = SwaggyjenkinsUser.class, tags={ "blueOcean", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved users details", response = SwaggyjenkinsUser.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    
    @RequestMapping(value = "/blue/rest/organizations/{organisation}/users/{user}",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<SwaggyjenkinsUser> getUser(@ApiParam(value = "Name of the organisation",required=true ) @PathVariable("organisation") String organisation,@ApiParam(value = "Name of the user",required=true ) @PathVariable("user") String user);


    @ApiOperation(value = "", notes = "Retrieve users details for an organisation", response = SwaggyjenkinsUser.class, tags={ "blueOcean", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved users details", response = SwaggyjenkinsUser.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    
    @RequestMapping(value = "/blue/rest/organizations/{organisation}/users/",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<SwaggyjenkinsUser> getUsers(@ApiParam(value = "Name of the organisation",required=true ) @PathVariable("organisation") String organisation);


    @ApiOperation(value = "", notes = "Get classes details", response = String.class, tags={ "blueOcean", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved search result", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    
    @RequestMapping(value = "/blue/rest/classes/",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<String> search( @NotNull@ApiParam(value = "Query string containing an array of class names", required = true) @RequestParam(value = "q", required = true) String q);


    @ApiOperation(value = "", notes = "Search for any resource details", response = String.class, tags={ "blueOcean", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved search result", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = Void.class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = Void.class) })
    
    @RequestMapping(value = "/blue/rest/search/",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<String> search( @NotNull@ApiParam(value = "Query string", required = true) @RequestParam(value = "q", required = true) String q);

}
