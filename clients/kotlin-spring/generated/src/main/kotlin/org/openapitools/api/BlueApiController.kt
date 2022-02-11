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


    @RequestMapping(
        method = [RequestMethod.DELETE],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}"]
    )
    fun deletePipelineQueueItem( @PathVariable("organization") organization: kotlin.String
, @PathVariable("pipeline") pipeline: kotlin.String
, @PathVariable("queue") queue: kotlin.String
): ResponseEntity<Unit> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/user/"],
        produces = ["application/json"]
    )
    fun getAuthenticatedUser( @PathVariable("organization") organization: kotlin.String
): ResponseEntity<User> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/classes/{class}"],
        produces = ["application/json"]
    )
    fun getClasses( @PathVariable("class") propertyClass: kotlin.String
): ResponseEntity<kotlin.String> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}"],
        produces = ["application/json"]
    )
    fun getOrganisation( @PathVariable("organization") organization: kotlin.String
): ResponseEntity<Organisation> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/"],
        produces = ["application/json"]
    )
    fun getOrganisations(): ResponseEntity<List<Organisation>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}"],
        produces = ["application/json"]
    )
    fun getPipeline( @PathVariable("organization") organization: kotlin.String
, @PathVariable("pipeline") pipeline: kotlin.String
): ResponseEntity<Pipeline> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities"],
        produces = ["application/json"]
    )
    fun getPipelineActivities( @PathVariable("organization") organization: kotlin.String
, @PathVariable("pipeline") pipeline: kotlin.String
): ResponseEntity<List<PipelineActivity>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/"],
        produces = ["application/json"]
    )
    fun getPipelineBranch( @PathVariable("organization") organization: kotlin.String
, @PathVariable("pipeline") pipeline: kotlin.String
, @PathVariable("branch") branch: kotlin.String
): ResponseEntity<BranchImpl> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}"],
        produces = ["application/json"]
    )
    fun getPipelineBranchRun( @PathVariable("organization") organization: kotlin.String
, @PathVariable("pipeline") pipeline: kotlin.String
, @PathVariable("branch") branch: kotlin.String
, @PathVariable("run") run: kotlin.String
): ResponseEntity<PipelineRun> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches"],
        produces = ["application/json"]
    )
    fun getPipelineBranches( @PathVariable("organization") organization: kotlin.String
, @PathVariable("pipeline") pipeline: kotlin.String
): ResponseEntity<MultibranchPipeline> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{folder}/"],
        produces = ["application/json"]
    )
    fun getPipelineFolder( @PathVariable("organization") organization: kotlin.String
, @PathVariable("folder") folder: kotlin.String
): ResponseEntity<PipelineFolderImpl> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}"],
        produces = ["application/json"]
    )
    fun getPipelineFolderPipeline( @PathVariable("organization") organization: kotlin.String
, @PathVariable("pipeline") pipeline: kotlin.String
, @PathVariable("folder") folder: kotlin.String
): ResponseEntity<PipelineImpl> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue"],
        produces = ["application/json"]
    )
    fun getPipelineQueue( @PathVariable("organization") organization: kotlin.String
, @PathVariable("pipeline") pipeline: kotlin.String
): ResponseEntity<List<QueueItemImpl>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}"],
        produces = ["application/json"]
    )
    fun getPipelineRun( @PathVariable("organization") organization: kotlin.String
, @PathVariable("pipeline") pipeline: kotlin.String
, @PathVariable("run") run: kotlin.String
): ResponseEntity<PipelineRun> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log"],
        produces = ["application/json"]
    )
    fun getPipelineRunLog( @PathVariable("organization") organization: kotlin.String
, @PathVariable("pipeline") pipeline: kotlin.String
, @PathVariable("run") run: kotlin.String
, @RequestParam(value = "start", required = false) start: kotlin.Int?
, @RequestParam(value = "download", required = false) download: kotlin.Boolean?
): ResponseEntity<kotlin.String> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}"],
        produces = ["application/json"]
    )
    fun getPipelineRunNode( @PathVariable("organization") organization: kotlin.String
, @PathVariable("pipeline") pipeline: kotlin.String
, @PathVariable("run") run: kotlin.String
, @PathVariable("node") node: kotlin.String
): ResponseEntity<PipelineRunNode> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}"],
        produces = ["application/json"]
    )
    fun getPipelineRunNodeStep( @PathVariable("organization") organization: kotlin.String
, @PathVariable("pipeline") pipeline: kotlin.String
, @PathVariable("run") run: kotlin.String
, @PathVariable("node") node: kotlin.String
, @PathVariable("step") step: kotlin.String
): ResponseEntity<PipelineStepImpl> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log"],
        produces = ["application/json"]
    )
    fun getPipelineRunNodeStepLog( @PathVariable("organization") organization: kotlin.String
, @PathVariable("pipeline") pipeline: kotlin.String
, @PathVariable("run") run: kotlin.String
, @PathVariable("node") node: kotlin.String
, @PathVariable("step") step: kotlin.String
): ResponseEntity<kotlin.String> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps"],
        produces = ["application/json"]
    )
    fun getPipelineRunNodeSteps( @PathVariable("organization") organization: kotlin.String
, @PathVariable("pipeline") pipeline: kotlin.String
, @PathVariable("run") run: kotlin.String
, @PathVariable("node") node: kotlin.String
): ResponseEntity<List<PipelineStepImpl>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes"],
        produces = ["application/json"]
    )
    fun getPipelineRunNodes( @PathVariable("organization") organization: kotlin.String
, @PathVariable("pipeline") pipeline: kotlin.String
, @PathVariable("run") run: kotlin.String
): ResponseEntity<List<PipelineRunNode>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs"],
        produces = ["application/json"]
    )
    fun getPipelineRuns( @PathVariable("organization") organization: kotlin.String
, @PathVariable("pipeline") pipeline: kotlin.String
): ResponseEntity<List<PipelineRun>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/pipelines/"],
        produces = ["application/json"]
    )
    fun getPipelines( @PathVariable("organization") organization: kotlin.String
): ResponseEntity<List<Pipeline>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/scm/{scm}"],
        produces = ["application/json"]
    )
    fun getSCM( @PathVariable("organization") organization: kotlin.String
, @PathVariable("scm") scm: kotlin.String
): ResponseEntity<GithubScm> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories"],
        produces = ["application/json"]
    )
    fun getSCMOrganisationRepositories( @PathVariable("organization") organization: kotlin.String
, @PathVariable("scm") scm: kotlin.String
, @PathVariable("scmOrganisation") scmOrganisation: kotlin.String
, @RequestParam(value = "credentialId", required = false) credentialId: kotlin.String?
, @RequestParam(value = "pageSize", required = false) pageSize: kotlin.Int?
, @RequestParam(value = "pageNumber", required = false) pageNumber: kotlin.Int?
): ResponseEntity<List<GithubOrganization>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}"],
        produces = ["application/json"]
    )
    fun getSCMOrganisationRepository( @PathVariable("organization") organization: kotlin.String
, @PathVariable("scm") scm: kotlin.String
, @PathVariable("scmOrganisation") scmOrganisation: kotlin.String
, @PathVariable("repository") repository: kotlin.String
, @RequestParam(value = "credentialId", required = false) credentialId: kotlin.String?
): ResponseEntity<List<GithubOrganization>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/scm/{scm}/organizations"],
        produces = ["application/json"]
    )
    fun getSCMOrganisations( @PathVariable("organization") organization: kotlin.String
, @PathVariable("scm") scm: kotlin.String
, @RequestParam(value = "credentialId", required = false) credentialId: kotlin.String?
): ResponseEntity<List<GithubOrganization>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/users/{user}"],
        produces = ["application/json"]
    )
    fun getUser( @PathVariable("organization") organization: kotlin.String
, @PathVariable("user") user: kotlin.String
): ResponseEntity<User> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/users/{user}/favorites"],
        produces = ["application/json"]
    )
    fun getUserFavorites( @PathVariable("user") user: kotlin.String
): ResponseEntity<List<FavoriteImpl>> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/organizations/{organization}/users/"],
        produces = ["application/json"]
    )
    fun getUsers( @PathVariable("organization") organization: kotlin.String
): ResponseEntity<User> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.POST],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay"],
        produces = ["application/json"]
    )
    fun postPipelineRun( @PathVariable("organization") organization: kotlin.String
, @PathVariable("pipeline") pipeline: kotlin.String
, @PathVariable("run") run: kotlin.String
): ResponseEntity<QueueItemImpl> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.POST],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs"],
        produces = ["application/json"]
    )
    fun postPipelineRuns( @PathVariable("organization") organization: kotlin.String
, @PathVariable("pipeline") pipeline: kotlin.String
): ResponseEntity<QueueItemImpl> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.PUT],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite"],
        produces = ["application/json"],
        consumes = ["application/json"]
    )
    fun putPipelineFavorite( @PathVariable("organization") organization: kotlin.String
, @PathVariable("pipeline") pipeline: kotlin.String
, @Valid @RequestBody body: kotlin.Boolean
): ResponseEntity<FavoriteImpl> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.PUT],
        value = ["/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop"],
        produces = ["application/json"]
    )
    fun putPipelineRun( @PathVariable("organization") organization: kotlin.String
, @PathVariable("pipeline") pipeline: kotlin.String
, @PathVariable("run") run: kotlin.String
, @RequestParam(value = "blocking", required = false) blocking: kotlin.String?
, @RequestParam(value = "timeOutInSecs", required = false) timeOutInSecs: kotlin.Int?
): ResponseEntity<PipelineRun> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/search/"],
        produces = ["application/json"]
    )
    fun search(@NotNull  @RequestParam(value = "q", required = true) q: kotlin.String
): ResponseEntity<kotlin.String> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/blue/rest/classes/"],
        produces = ["application/json"]
    )
    fun searchClasses(@NotNull  @RequestParam(value = "q", required = true) q: kotlin.String
): ResponseEntity<kotlin.String> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }
}
