package org.openapitools.api

import org.openapitools.model.ListView
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
class ViewApiController() {


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/view/{name}/api/json"],
        produces = ["application/json"]
    )
    fun getView( @PathVariable("name") name: kotlin.String
): ResponseEntity<ListView> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/view/{name}/config.xml"],
        produces = ["text/xml"]
    )
    fun getViewConfig( @PathVariable("name") name: kotlin.String
): ResponseEntity<kotlin.String> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.POST],
        value = ["/view/{name}/config.xml"],
        produces = ["*/*"],
        consumes = ["application/json"]
    )
    fun postViewConfig( @PathVariable("name") name: kotlin.String
, @Valid @RequestBody body: kotlin.String
, @RequestHeader(value="Jenkins-Crumb", required=false) jenkinsCrumb: kotlin.String?
): ResponseEntity<Unit> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }
}
