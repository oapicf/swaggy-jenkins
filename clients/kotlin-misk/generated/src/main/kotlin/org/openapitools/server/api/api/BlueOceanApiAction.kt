package org.openapitools.server.api.api

import jakarta.inject.Inject
import jakarta.inject.Singleton
import jakarta.validation.Valid
import jakarta.validation.constraints.DecimalMax
import jakarta.validation.constraints.DecimalMin
import jakarta.validation.constraints.Email
import jakarta.validation.constraints.Max
import jakarta.validation.constraints.Min
import jakarta.validation.constraints.NotNull
import jakarta.validation.constraints.Pattern
import jakarta.validation.constraints.Size
import misk.web.actions.WebAction
import misk.web.interceptors.LogRequestResponse
import misk.web.Delete
import misk.web.Description
import misk.web.Get
import misk.web.HttpCall
import misk.web.Patch
import misk.web.PathParam
import misk.web.Post
import misk.web.Put
import misk.web.QueryParam
import misk.web.RequestBody
import misk.web.RequestContentType
import misk.web.RequestHeader
import misk.web.Response
import misk.web.ResponseContentType
import misk.web.mediatype.MediaTypes
import org.openapitools.server.api.model.BranchImpl
import org.openapitools.server.api.model.FavoriteImpl
import org.openapitools.server.api.model.GithubOrganization
import org.openapitools.server.api.model.GithubScm
import org.openapitools.server.api.model.MultibranchPipeline
import org.openapitools.server.api.model.Organisation
import org.openapitools.server.api.model.Pipeline
import org.openapitools.server.api.model.PipelineActivity
import org.openapitools.server.api.model.PipelineFolderImpl
import org.openapitools.server.api.model.PipelineImpl
import org.openapitools.server.api.model.PipelineRun
import org.openapitools.server.api.model.PipelineRunNode
import org.openapitools.server.api.model.PipelineStepImpl
import org.openapitools.server.api.model.QueueItemImpl
import org.openapitools.server.api.model.User

/**
* @TODO("Fill out implementation")
*/
@Singleton
class BlueOceanApiAction @Inject constructor(
) : WebAction {

    @Delete("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}")
    @Description("")
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun deletePipelineQueueItem(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("pipeline") pipeline: kotlin.String, 
        @PathParam("queue") queue: kotlin.String
    ): Response<Unit> {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/user/")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getAuthenticatedUser(
        @PathParam("organization") organization: kotlin.String
    ): User {
        TODO()
    }

    @Get("/blue/rest/classes/{class}")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getClasses(
        @PathParam("class") propertyClass: kotlin.String
    ): kotlin.String {
        TODO()
    }

    @Get("/jwt-auth/jwks/{key}")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getJsonWebKey(
        @PathParam("key") key: kotlin.Int
    ): kotlin.String {
        TODO()
    }

    @Get("/jwt-auth/token")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getJsonWebToken(
         @QueryParam(value = "expiryTimeInMins") expiryTimeInMins: kotlin.Int?, 
         @QueryParam(value = "maxExpiryTimeInMins") maxExpiryTimeInMins: kotlin.Int?
    ): kotlin.String {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getOrganisation(
        @PathParam("organization") organization: kotlin.String
    ): Organisation {
        TODO()
    }

    @Get("/blue/rest/organizations/")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getOrganisations(
    ): kotlin.collections.List<Organisation> {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getPipeline(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("pipeline") pipeline: kotlin.String
    ): Pipeline {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getPipelineActivities(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("pipeline") pipeline: kotlin.String
    ): kotlin.collections.List<PipelineActivity> {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getPipelineBranch(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("pipeline") pipeline: kotlin.String, 
        @PathParam("branch") branch: kotlin.String
    ): BranchImpl {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getPipelineBranchRun(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("pipeline") pipeline: kotlin.String, 
        @PathParam("branch") branch: kotlin.String, 
        @PathParam("run") run: kotlin.String
    ): PipelineRun {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getPipelineBranches(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("pipeline") pipeline: kotlin.String
    ): MultibranchPipeline {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/pipelines/{folder}/")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getPipelineFolder(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("folder") folder: kotlin.String
    ): PipelineFolderImpl {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getPipelineFolderPipeline(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("pipeline") pipeline: kotlin.String, 
        @PathParam("folder") folder: kotlin.String
    ): PipelineImpl {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getPipelineQueue(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("pipeline") pipeline: kotlin.String
    ): kotlin.collections.List<QueueItemImpl> {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getPipelineRun(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("pipeline") pipeline: kotlin.String, 
        @PathParam("run") run: kotlin.String
    ): PipelineRun {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getPipelineRunLog(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("pipeline") pipeline: kotlin.String, 
        @PathParam("run") run: kotlin.String, 
         @QueryParam(value = "start") start: kotlin.Int?, 
         @QueryParam(value = "download") download: kotlin.Boolean?
    ): kotlin.String {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getPipelineRunNode(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("pipeline") pipeline: kotlin.String, 
        @PathParam("run") run: kotlin.String, 
        @PathParam("node") node: kotlin.String
    ): PipelineRunNode {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getPipelineRunNodeStep(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("pipeline") pipeline: kotlin.String, 
        @PathParam("run") run: kotlin.String, 
        @PathParam("node") node: kotlin.String, 
        @PathParam("step") step: kotlin.String
    ): PipelineStepImpl {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getPipelineRunNodeStepLog(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("pipeline") pipeline: kotlin.String, 
        @PathParam("run") run: kotlin.String, 
        @PathParam("node") node: kotlin.String, 
        @PathParam("step") step: kotlin.String
    ): kotlin.String {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getPipelineRunNodeSteps(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("pipeline") pipeline: kotlin.String, 
        @PathParam("run") run: kotlin.String, 
        @PathParam("node") node: kotlin.String
    ): kotlin.collections.List<PipelineStepImpl> {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getPipelineRunNodes(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("pipeline") pipeline: kotlin.String, 
        @PathParam("run") run: kotlin.String
    ): kotlin.collections.List<PipelineRunNode> {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getPipelineRuns(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("pipeline") pipeline: kotlin.String
    ): kotlin.collections.List<PipelineRun> {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/pipelines/")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getPipelines(
        @PathParam("organization") organization: kotlin.String
    ): kotlin.collections.List<Pipeline> {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/scm/{scm}")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getSCM(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("scm") scm: kotlin.String
    ): GithubScm {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getSCMOrganisationRepositories(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("scm") scm: kotlin.String, 
        @PathParam("scmOrganisation") scmOrganisation: kotlin.String, 
         @QueryParam(value = "credentialId") credentialId: kotlin.String?, 
         @QueryParam(value = "pageSize") pageSize: kotlin.Int?, 
         @QueryParam(value = "pageNumber") pageNumber: kotlin.Int?
    ): kotlin.collections.List<GithubOrganization> {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getSCMOrganisationRepository(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("scm") scm: kotlin.String, 
        @PathParam("scmOrganisation") scmOrganisation: kotlin.String, 
        @PathParam("repository") repository: kotlin.String, 
         @QueryParam(value = "credentialId") credentialId: kotlin.String?
    ): kotlin.collections.List<GithubOrganization> {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/scm/{scm}/organizations")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getSCMOrganisations(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("scm") scm: kotlin.String, 
         @QueryParam(value = "credentialId") credentialId: kotlin.String?
    ): kotlin.collections.List<GithubOrganization> {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/users/{user}")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getUser(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("user") user: kotlin.String
    ): User {
        TODO()
    }

    @Get("/blue/rest/users/{user}/favorites")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getUserFavorites(
        @PathParam("user") user: kotlin.String
    ): kotlin.collections.List<FavoriteImpl> {
        TODO()
    }

    @Get("/blue/rest/organizations/{organization}/users/")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getUsers(
        @PathParam("organization") organization: kotlin.String
    ): User {
        TODO()
    }

    @Post("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun postPipelineRun(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("pipeline") pipeline: kotlin.String, 
        @PathParam("run") run: kotlin.String
    ): QueueItemImpl {
        TODO()
    }

    @Post("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun postPipelineRuns(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("pipeline") pipeline: kotlin.String
    ): QueueItemImpl {
        TODO()
    }

    @Put("/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite")
    @Description("")
    @RequestContentType(MediaTypes.APPLICATION_JSON)
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun putPipelineFavorite(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("pipeline") pipeline: kotlin.String, 
        @Valid @RequestBody body: kotlin.Boolean
    ): FavoriteImpl {
        TODO()
    }

    @Put("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun putPipelineRun(
        @PathParam("organization") organization: kotlin.String, 
        @PathParam("pipeline") pipeline: kotlin.String, 
        @PathParam("run") run: kotlin.String, 
         @QueryParam(value = "blocking") blocking: kotlin.String?, 
         @QueryParam(value = "timeOutInSecs") timeOutInSecs: kotlin.Int?
    ): PipelineRun {
        TODO()
    }

    @Get("/blue/rest/search/")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun search(
         @QueryParam(value = "q") q: kotlin.String
    ): kotlin.String {
        TODO()
    }

    @Get("/blue/rest/classes/")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun searchClasses(
         @QueryParam(value = "q") q: kotlin.String
    ): kotlin.String {
        TODO()
    }
}
