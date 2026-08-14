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
import org.openapitools.server.api.model.ComputerSet
import org.openapitools.server.api.model.FreeStyleBuild
import org.openapitools.server.api.model.FreeStyleProject
import org.openapitools.server.api.model.Hudson
import org.openapitools.server.api.model.ListView
import org.openapitools.server.api.model.Queue

/**
* @TODO("Fill out implementation")
*/
@Singleton
class RemoteAccessApiAction @Inject constructor(
) : WebAction {

    @Get("/computer/api/json")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getComputer(
         @QueryParam(value = "depth") depth: kotlin.Int
    ): ComputerSet {
        TODO()
    }

    @Get("/api/json")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getJenkins(
    ): Hudson {
        TODO()
    }

    @Get("/job/{name}/api/json")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getJob(
        @PathParam("name") name: kotlin.String
    ): FreeStyleProject {
        TODO()
    }

    @Get("/job/{name}/config.xml")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_OCTETSTREAM /* @todo(unknown) -> text/xml */ )
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getJobConfig(
        @PathParam("name") name: kotlin.String
    ): kotlin.String {
        TODO()
    }

    @Get("/job/{name}/lastBuild/api/json")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getJobLastBuild(
        @PathParam("name") name: kotlin.String
    ): FreeStyleBuild {
        TODO()
    }

    @Get("/job/{name}/{number}/logText/progressiveText")
    @Description("")
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getJobProgressiveText(
        @PathParam("name") name: kotlin.String, 
        @PathParam("number") number: kotlin.String, 
         @QueryParam(value = "start") start: kotlin.String
    ): Response<Unit> {
        TODO()
    }

    @Get("/queue/api/json")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getQueue(
    ): Queue {
        TODO()
    }

    @Get("/queue/item/{number}/api/json")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getQueueItem(
        @PathParam("number") number: kotlin.String
    ): Queue {
        TODO()
    }

    @Get("/view/{name}/api/json")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_JSON)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getView(
        @PathParam("name") name: kotlin.String
    ): ListView {
        TODO()
    }

    @Get("/view/{name}/config.xml")
    @Description("")
    @ResponseContentType(MediaTypes.APPLICATION_OCTETSTREAM /* @todo(unknown) -> text/xml */ )
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun getViewConfig(
        @PathParam("name") name: kotlin.String
    ): kotlin.String {
        TODO()
    }

    @Head("/api/json")
    @Description("")
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun headJenkins(
    ): Response<Unit> {
        TODO()
    }

    @Post("/createItem")
    @Description("")
    @RequestContentType(MediaTypes.APPLICATION_JSON)
    @ResponseContentType(MediaTypes.ALL)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun postCreateItem(
         @QueryParam(value = "name") name: kotlin.String, 
         @QueryParam(value = "from") from: kotlin.String?, 
         @QueryParam(value = "mode") mode: kotlin.String?, 
        @RequestHeader(value = "Jenkins-Crumb") jenkinsCrumb: kotlin.String?, 
        @RequestHeader(value = "Content-Type") contentType: kotlin.String?, 
        @Valid @RequestBody body: kotlin.String?
    ): Response<Unit> {
        TODO()
    }

    @Post("/createView")
    @Description("")
    @RequestContentType(MediaTypes.APPLICATION_JSON)
    @ResponseContentType(MediaTypes.ALL)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun postCreateView(
         @QueryParam(value = "name") name: kotlin.String, 
        @RequestHeader(value = "Jenkins-Crumb") jenkinsCrumb: kotlin.String?, 
        @RequestHeader(value = "Content-Type") contentType: kotlin.String?, 
        @Valid @RequestBody body: kotlin.String?
    ): Response<Unit> {
        TODO()
    }

    @Post("/job/{name}/build")
    @Description("")
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun postJobBuild(
        @PathParam("name") name: kotlin.String, 
         @QueryParam(value = "json") json: kotlin.String, 
         @QueryParam(value = "token") token: kotlin.String?, 
        @RequestHeader(value = "Jenkins-Crumb") jenkinsCrumb: kotlin.String?
    ): Response<Unit> {
        TODO()
    }

    @Post("/job/{name}/config.xml")
    @Description("")
    @RequestContentType(MediaTypes.APPLICATION_JSON)
    @ResponseContentType(MediaTypes.ALL)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun postJobConfig(
        @PathParam("name") name: kotlin.String, 
        @Valid @RequestBody body: kotlin.String, 
        @RequestHeader(value = "Jenkins-Crumb") jenkinsCrumb: kotlin.String?
    ): Response<Unit> {
        TODO()
    }

    @Post("/job/{name}/doDelete")
    @Description("")
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun postJobDelete(
        @PathParam("name") name: kotlin.String, 
        @RequestHeader(value = "Jenkins-Crumb") jenkinsCrumb: kotlin.String?
    ): Response<Unit> {
        TODO()
    }

    @Post("/job/{name}/disable")
    @Description("")
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun postJobDisable(
        @PathParam("name") name: kotlin.String, 
        @RequestHeader(value = "Jenkins-Crumb") jenkinsCrumb: kotlin.String?
    ): Response<Unit> {
        TODO()
    }

    @Post("/job/{name}/enable")
    @Description("")
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun postJobEnable(
        @PathParam("name") name: kotlin.String, 
        @RequestHeader(value = "Jenkins-Crumb") jenkinsCrumb: kotlin.String?
    ): Response<Unit> {
        TODO()
    }

    @Post("/job/{name}/lastBuild/stop")
    @Description("")
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun postJobLastBuildStop(
        @PathParam("name") name: kotlin.String, 
        @RequestHeader(value = "Jenkins-Crumb") jenkinsCrumb: kotlin.String?
    ): Response<Unit> {
        TODO()
    }

    @Post("/view/{name}/config.xml")
    @Description("")
    @RequestContentType(MediaTypes.APPLICATION_JSON)
    @ResponseContentType(MediaTypes.ALL)
    @LogRequestResponse(bodySampling = 1.0, errorBodySampling = 1.0)
    fun postViewConfig(
        @PathParam("name") name: kotlin.String, 
        @Valid @RequestBody body: kotlin.String, 
        @RequestHeader(value = "Jenkins-Crumb") jenkinsCrumb: kotlin.String?
    ): Response<Unit> {
        TODO()
    }
}
