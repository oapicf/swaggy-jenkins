package org.openapitools.api

import org.openapitools.model.BranchImpl
import org.openapitools.model.FavoriteImpl
import org.openapitools.model.GithubOrganization
import org.openapitools.model.GithubScm
import org.openapitools.model.MultibranchPipeline
import org.openapitools.model.Organisation
import org.openapitools.model.Pipeline
import org.openapitools.model.PipelineActivity
import org.openapitools.model.PipelineFolderImpl
import org.openapitools.model.PipelineImpl
import org.openapitools.model.PipelineRun
import org.openapitools.model.PipelineRunNode
import org.openapitools.model.PipelineStepImpl
import org.openapitools.model.QueueItemImpl
import org.openapitools.model.User
import io.swagger.v3.oas.annotations.*
import io.swagger.v3.oas.annotations.enums.*
import io.swagger.v3.oas.annotations.media.*
import io.swagger.v3.oas.annotations.responses.*
import io.swagger.v3.oas.annotations.security.*
import org.springframework.http.HttpStatus
import org.springframework.http.MediaType
import org.springframework.http.ResponseEntity

import org.springframework.web.bind.annotation.*
import org.springframework.validation.annotation.Validated
import org.springframework.web.context.request.NativeWebRequest
import org.springframework.beans.factory.annotation.Autowired

import javax.validation.Valid
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Email
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

import kotlin.collections.List
import kotlin.collections.Map

@RestController
@Validated
@RequestMapping("\${api.base-path:}")
class BlueApiController() {

    @Operation(
        summary = "",
        operationId = "deletePipelineQueueItem",
        description = "Delete queue item from an organization pipeline queue",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully deleted queue item"),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.DELETE],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}"]
    )
    fun deletePipelineQueueItem(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the pipeline", required = true) @PathVariable("pipeline") pipeline: kotlin.String,@Parameter(description = "Name of the queue item", required = true) @PathVariable("queue") queue: kotlin.String): ResponseEntity<Unit> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getAuthenticatedUser",
        description = "Retrieve authenticated user details for an organization",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved authenticated user details", content = [Content(schema = Schema(implementation = User::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/user/"],
        produces = ["application/json"]
    )
    fun getAuthenticatedUser(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String): ResponseEntity<User> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getClasses",
        description = "Get a list of class names supported by a given class",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved class names", content = [Content(schema = Schema(implementation = kotlin.String::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/classes/{class}"],
        produces = ["application/json"]
    )
    fun getClasses(@Parameter(description = "Name of the class", required = true) @PathVariable("class") propertyClass: kotlin.String): ResponseEntity<kotlin.String> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getOrganisation",
        description = "Retrieve organization details",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved pipeline details", content = [Content(schema = Schema(implementation = Organisation::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password"),
            ApiResponse(responseCode = "404", description = "Pipeline cannot be found on Jenkins instance") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}"],
        produces = ["application/json"]
    )
    fun getOrganisation(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String): ResponseEntity<Organisation> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getOrganisations",
        description = "Retrieve all organizations details",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved pipelines details", content = [Content(schema = Schema(implementation = Organisation::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/"],
        produces = ["application/json"]
    )
    fun getOrganisations(): ResponseEntity<List<Organisation>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getPipeline",
        description = "Retrieve pipeline details for an organization",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved pipeline details", content = [Content(schema = Schema(implementation = Pipeline::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password"),
            ApiResponse(responseCode = "404", description = "Pipeline cannot be found on Jenkins instance") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}"],
        produces = ["application/json"]
    )
    fun getPipeline(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the pipeline", required = true) @PathVariable("pipeline") pipeline: kotlin.String): ResponseEntity<Pipeline> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getPipelineActivities",
        description = "Retrieve all activities details for an organization pipeline",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved all activities details", content = [Content(schema = Schema(implementation = PipelineActivity::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities"],
        produces = ["application/json"]
    )
    fun getPipelineActivities(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the pipeline", required = true) @PathVariable("pipeline") pipeline: kotlin.String): ResponseEntity<List<PipelineActivity>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getPipelineBranch",
        description = "Retrieve branch details for an organization pipeline",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved branch details", content = [Content(schema = Schema(implementation = BranchImpl::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/"],
        produces = ["application/json"]
    )
    fun getPipelineBranch(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the pipeline", required = true) @PathVariable("pipeline") pipeline: kotlin.String,@Parameter(description = "Name of the branch", required = true) @PathVariable("branch") branch: kotlin.String): ResponseEntity<BranchImpl> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getPipelineBranchRun",
        description = "Retrieve branch run details for an organization pipeline",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved run details", content = [Content(schema = Schema(implementation = PipelineRun::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}"],
        produces = ["application/json"]
    )
    fun getPipelineBranchRun(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the pipeline", required = true) @PathVariable("pipeline") pipeline: kotlin.String,@Parameter(description = "Name of the branch", required = true) @PathVariable("branch") branch: kotlin.String,@Parameter(description = "Name of the run", required = true) @PathVariable("run") run: kotlin.String): ResponseEntity<PipelineRun> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getPipelineBranches",
        description = "Retrieve all branches details for an organization pipeline",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved all branches details", content = [Content(schema = Schema(implementation = MultibranchPipeline::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches"],
        produces = ["application/json"]
    )
    fun getPipelineBranches(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the pipeline", required = true) @PathVariable("pipeline") pipeline: kotlin.String): ResponseEntity<MultibranchPipeline> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getPipelineFolder",
        description = "Retrieve pipeline folder for an organization",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved folder details", content = [Content(schema = Schema(implementation = PipelineFolderImpl::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{folder}/"],
        produces = ["application/json"]
    )
    fun getPipelineFolder(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the folder", required = true) @PathVariable("folder") folder: kotlin.String): ResponseEntity<PipelineFolderImpl> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getPipelineFolderPipeline",
        description = "Retrieve pipeline details for an organization folder",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved pipeline details", content = [Content(schema = Schema(implementation = PipelineImpl::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}"],
        produces = ["application/json"]
    )
    fun getPipelineFolderPipeline(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the pipeline", required = true) @PathVariable("pipeline") pipeline: kotlin.String,@Parameter(description = "Name of the folder", required = true) @PathVariable("folder") folder: kotlin.String): ResponseEntity<PipelineImpl> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getPipelineQueue",
        description = "Retrieve queue details for an organization pipeline",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved queue details", content = [Content(schema = Schema(implementation = QueueItemImpl::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue"],
        produces = ["application/json"]
    )
    fun getPipelineQueue(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the pipeline", required = true) @PathVariable("pipeline") pipeline: kotlin.String): ResponseEntity<List<QueueItemImpl>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getPipelineRun",
        description = "Retrieve run details for an organization pipeline",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved run details", content = [Content(schema = Schema(implementation = PipelineRun::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}"],
        produces = ["application/json"]
    )
    fun getPipelineRun(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the pipeline", required = true) @PathVariable("pipeline") pipeline: kotlin.String,@Parameter(description = "Name of the run", required = true) @PathVariable("run") run: kotlin.String): ResponseEntity<PipelineRun> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getPipelineRunLog",
        description = "Get log for a pipeline run",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved pipeline run log", content = [Content(schema = Schema(implementation = kotlin.String::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log"],
        produces = ["application/json"]
    )
    fun getPipelineRunLog(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the pipeline", required = true) @PathVariable("pipeline") pipeline: kotlin.String,@Parameter(description = "Name of the run", required = true) @PathVariable("run") run: kotlin.String,@Parameter(description = "Start position of the log") @Valid @RequestParam(value = "start", required = false) start: kotlin.Int?,@Parameter(description = "Set to true in order to download the file, otherwise it's passed as a response body") @Valid @RequestParam(value = "download", required = false) download: kotlin.Boolean?): ResponseEntity<kotlin.String> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getPipelineRunNode",
        description = "Retrieve run node details for an organization pipeline",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved run node details", content = [Content(schema = Schema(implementation = PipelineRunNode::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}"],
        produces = ["application/json"]
    )
    fun getPipelineRunNode(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the pipeline", required = true) @PathVariable("pipeline") pipeline: kotlin.String,@Parameter(description = "Name of the run", required = true) @PathVariable("run") run: kotlin.String,@Parameter(description = "Name of the node", required = true) @PathVariable("node") node: kotlin.String): ResponseEntity<PipelineRunNode> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getPipelineRunNodeStep",
        description = "Retrieve run node details for an organization pipeline",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved run node step details", content = [Content(schema = Schema(implementation = PipelineStepImpl::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}"],
        produces = ["application/json"]
    )
    fun getPipelineRunNodeStep(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the pipeline", required = true) @PathVariable("pipeline") pipeline: kotlin.String,@Parameter(description = "Name of the run", required = true) @PathVariable("run") run: kotlin.String,@Parameter(description = "Name of the node", required = true) @PathVariable("node") node: kotlin.String,@Parameter(description = "Name of the step", required = true) @PathVariable("step") step: kotlin.String): ResponseEntity<PipelineStepImpl> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getPipelineRunNodeStepLog",
        description = "Get log for a pipeline run node step",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved pipeline run node step log", content = [Content(schema = Schema(implementation = kotlin.String::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log"],
        produces = ["application/json"]
    )
    fun getPipelineRunNodeStepLog(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the pipeline", required = true) @PathVariable("pipeline") pipeline: kotlin.String,@Parameter(description = "Name of the run", required = true) @PathVariable("run") run: kotlin.String,@Parameter(description = "Name of the node", required = true) @PathVariable("node") node: kotlin.String,@Parameter(description = "Name of the step", required = true) @PathVariable("step") step: kotlin.String): ResponseEntity<kotlin.String> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getPipelineRunNodeSteps",
        description = "Retrieve run node steps details for an organization pipeline",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved run node steps details", content = [Content(schema = Schema(implementation = PipelineStepImpl::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps"],
        produces = ["application/json"]
    )
    fun getPipelineRunNodeSteps(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the pipeline", required = true) @PathVariable("pipeline") pipeline: kotlin.String,@Parameter(description = "Name of the run", required = true) @PathVariable("run") run: kotlin.String,@Parameter(description = "Name of the node", required = true) @PathVariable("node") node: kotlin.String): ResponseEntity<List<PipelineStepImpl>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getPipelineRunNodes",
        description = "Retrieve run nodes details for an organization pipeline",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved run nodes details", content = [Content(schema = Schema(implementation = PipelineRunNode::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes"],
        produces = ["application/json"]
    )
    fun getPipelineRunNodes(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the pipeline", required = true) @PathVariable("pipeline") pipeline: kotlin.String,@Parameter(description = "Name of the run", required = true) @PathVariable("run") run: kotlin.String): ResponseEntity<List<PipelineRunNode>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getPipelineRuns",
        description = "Retrieve all runs details for an organization pipeline",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved runs details", content = [Content(schema = Schema(implementation = PipelineRun::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs"],
        produces = ["application/json"]
    )
    fun getPipelineRuns(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the pipeline", required = true) @PathVariable("pipeline") pipeline: kotlin.String): ResponseEntity<List<PipelineRun>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getPipelines",
        description = "Retrieve all pipelines details for an organization",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved pipelines details", content = [Content(schema = Schema(implementation = Pipeline::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/"],
        produces = ["application/json"]
    )
    fun getPipelines(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String): ResponseEntity<List<Pipeline>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getSCM",
        description = "Retrieve SCM details for an organization",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved SCM details", content = [Content(schema = Schema(implementation = GithubScm::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/scm/{scm}"],
        produces = ["application/json"]
    )
    fun getSCM(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of SCM", required = true) @PathVariable("scm") scm: kotlin.String): ResponseEntity<GithubScm> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getSCMOrganisationRepositories",
        description = "Retrieve SCM organization repositories details for an organization",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved SCM organization repositories details", content = [Content(schema = Schema(implementation = GithubOrganization::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories"],
        produces = ["application/json"]
    )
    fun getSCMOrganisationRepositories(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of SCM", required = true) @PathVariable("scm") scm: kotlin.String,@Parameter(description = "Name of the SCM organization", required = true) @PathVariable("scmOrganisation") scmOrganisation: kotlin.String,@Parameter(description = "Credential ID") @Valid @RequestParam(value = "credentialId", required = false) credentialId: kotlin.String?,@Parameter(description = "Number of items in a page") @Valid @RequestParam(value = "pageSize", required = false) pageSize: kotlin.Int?,@Parameter(description = "Page number") @Valid @RequestParam(value = "pageNumber", required = false) pageNumber: kotlin.Int?): ResponseEntity<List<GithubOrganization>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getSCMOrganisationRepository",
        description = "Retrieve SCM organization repository details for an organization",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved SCM organizations details", content = [Content(schema = Schema(implementation = GithubOrganization::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}"],
        produces = ["application/json"]
    )
    fun getSCMOrganisationRepository(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of SCM", required = true) @PathVariable("scm") scm: kotlin.String,@Parameter(description = "Name of the SCM organization", required = true) @PathVariable("scmOrganisation") scmOrganisation: kotlin.String,@Parameter(description = "Name of the SCM repository", required = true) @PathVariable("repository") repository: kotlin.String,@Parameter(description = "Credential ID") @Valid @RequestParam(value = "credentialId", required = false) credentialId: kotlin.String?): ResponseEntity<List<GithubOrganization>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getSCMOrganisations",
        description = "Retrieve SCM organizations details for an organization",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved SCM organizations details", content = [Content(schema = Schema(implementation = GithubOrganization::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/scm/{scm}/organizations"],
        produces = ["application/json"]
    )
    fun getSCMOrganisations(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of SCM", required = true) @PathVariable("scm") scm: kotlin.String,@Parameter(description = "Credential ID") @Valid @RequestParam(value = "credentialId", required = false) credentialId: kotlin.String?): ResponseEntity<List<GithubOrganization>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getUser",
        description = "Retrieve user details for an organization",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved users details", content = [Content(schema = Schema(implementation = User::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/users/{user}"],
        produces = ["application/json"]
    )
    fun getUser(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the user", required = true) @PathVariable("user") user: kotlin.String): ResponseEntity<User> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getUserFavorites",
        description = "Retrieve user favorites details for an organization",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved users favorites details", content = [Content(schema = Schema(implementation = FavoriteImpl::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/users/{user}/favorites"],
        produces = ["application/json"]
    )
    fun getUserFavorites(@Parameter(description = "Name of the user", required = true) @PathVariable("user") user: kotlin.String): ResponseEntity<List<FavoriteImpl>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getUsers",
        description = "Retrieve users details for an organization",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved users details", content = [Content(schema = Schema(implementation = User::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/users/"],
        produces = ["application/json"]
    )
    fun getUsers(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String): ResponseEntity<User> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "postPipelineRun",
        description = "Replay an organization pipeline run",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully replayed a pipeline run", content = [Content(schema = Schema(implementation = QueueItemImpl::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.POST],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay"],
        produces = ["application/json"]
    )
    fun postPipelineRun(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the pipeline", required = true) @PathVariable("pipeline") pipeline: kotlin.String,@Parameter(description = "Name of the run", required = true) @PathVariable("run") run: kotlin.String): ResponseEntity<QueueItemImpl> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "postPipelineRuns",
        description = "Start a build for an organization pipeline",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully started a build", content = [Content(schema = Schema(implementation = QueueItemImpl::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.POST],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs"],
        produces = ["application/json"]
    )
    fun postPipelineRuns(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the pipeline", required = true) @PathVariable("pipeline") pipeline: kotlin.String): ResponseEntity<QueueItemImpl> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "putPipelineFavorite",
        description = "Favorite/unfavorite a pipeline",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully favorited/unfavorited a pipeline", content = [Content(schema = Schema(implementation = FavoriteImpl::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.PUT],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite"],
        produces = ["application/json"],
        consumes = ["application/json"]
    )
    fun putPipelineFavorite(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the pipeline", required = true) @PathVariable("pipeline") pipeline: kotlin.String,@Parameter(description = "Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite", required = true) @Valid @RequestBody body: kotlin.Boolean): ResponseEntity<FavoriteImpl> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "putPipelineRun",
        description = "Stop a build of an organization pipeline",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully stopped a build", content = [Content(schema = Schema(implementation = PipelineRun::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.PUT],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop"],
        produces = ["application/json"]
    )
    fun putPipelineRun(@Parameter(description = "Name of the organization", required = true) @PathVariable("organization") organization: kotlin.String,@Parameter(description = "Name of the pipeline", required = true) @PathVariable("pipeline") pipeline: kotlin.String,@Parameter(description = "Name of the run", required = true) @PathVariable("run") run: kotlin.String,@Parameter(description = "Set to true to make blocking stop, default: false") @Valid @RequestParam(value = "blocking", required = false) blocking: kotlin.String?,@Parameter(description = "Timeout in seconds, default: 10 seconds") @Valid @RequestParam(value = "timeOutInSecs", required = false) timeOutInSecs: kotlin.Int?): ResponseEntity<PipelineRun> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "search",
        description = "Search for any resource details",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved search result", content = [Content(schema = Schema(implementation = kotlin.String::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/search/"],
        produces = ["application/json"]
    )
    fun search(@NotNull @Parameter(description = "Query string", required = true) @Valid @RequestParam(value = "q", required = true) q: kotlin.String): ResponseEntity<kotlin.String> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "searchClasses",
        description = "Get classes details",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved search result", content = [Content(schema = Schema(implementation = kotlin.String::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/classes/"],
        produces = ["application/json"]
    )
    fun searchClasses(@NotNull @Parameter(description = "Query string containing an array of class names", required = true) @Valid @RequestParam(value = "q", required = true) q: kotlin.String): ResponseEntity<kotlin.String> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }
}
