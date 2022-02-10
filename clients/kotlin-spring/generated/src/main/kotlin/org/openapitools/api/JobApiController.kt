package org.openapitools.api

import org.openapitools.model.FreeStyleBuild
import org.openapitools.model.FreeStyleProject
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
class JobApiController() {


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/job/{name}/api/json"],
        produces = ["application/json"]
    )
    fun getJob( @PathVariable("name") name: kotlin.String
): ResponseEntity<FreeStyleProject> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/job/{name}/config.xml"],
        produces = ["text/xml"]
    )
    fun getJobConfig( @PathVariable("name") name: kotlin.String
): ResponseEntity<kotlin.String> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/job/{name}/lastBuild/api/json"],
        produces = ["application/json"]
    )
    fun getJobLastBuild( @PathVariable("name") name: kotlin.String
): ResponseEntity<FreeStyleBuild> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/job/{name}/{number}/logText/progressiveText"]
    )
    fun getJobProgressiveText( @PathVariable("name") name: kotlin.String
, @PathVariable("number") number: kotlin.String
,@NotNull  @RequestParam(value = "start", required = true) start: kotlin.String
): ResponseEntity<Unit> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.POST],
        value = ["/job/{name}/build"]
    )
    fun postJobBuild( @PathVariable("name") name: kotlin.String
,@NotNull  @RequestParam(value = "json", required = true) json: kotlin.String
, @RequestParam(value = "token", required = false) token: kotlin.String?
, @RequestHeader(value="Jenkins-Crumb", required=false) jenkinsCrumb: kotlin.String?
): ResponseEntity<Unit> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.POST],
        value = ["/job/{name}/config.xml"],
        produces = ["*/*"],
        consumes = ["application/json"]
    )
    fun postJobConfig( @PathVariable("name") name: kotlin.String
, @Valid @RequestBody body: kotlin.String
, @RequestHeader(value="Jenkins-Crumb", required=false) jenkinsCrumb: kotlin.String?
): ResponseEntity<Unit> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.POST],
        value = ["/job/{name}/doDelete"]
    )
    fun postJobDelete( @PathVariable("name") name: kotlin.String
, @RequestHeader(value="Jenkins-Crumb", required=false) jenkinsCrumb: kotlin.String?
): ResponseEntity<Unit> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.POST],
        value = ["/job/{name}/disable"]
    )
    fun postJobDisable( @PathVariable("name") name: kotlin.String
, @RequestHeader(value="Jenkins-Crumb", required=false) jenkinsCrumb: kotlin.String?
): ResponseEntity<Unit> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.POST],
        value = ["/job/{name}/enable"]
    )
    fun postJobEnable( @PathVariable("name") name: kotlin.String
, @RequestHeader(value="Jenkins-Crumb", required=false) jenkinsCrumb: kotlin.String?
): ResponseEntity<Unit> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.POST],
        value = ["/job/{name}/lastBuild/stop"]
    )
    fun postJobLastBuildStop( @PathVariable("name") name: kotlin.String
, @RequestHeader(value="Jenkins-Crumb", required=false) jenkinsCrumb: kotlin.String?
): ResponseEntity<Unit> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }
}
