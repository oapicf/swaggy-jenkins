package org.openapitools.api

import org.openapitools.model.Queue
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
class QueueApiController() {


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/queue/api/json"],
        produces = ["application/json"]
    )
    fun getQueue(): ResponseEntity<Queue> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/queue/item/{number}/api/json"],
        produces = ["application/json"]
    )
    fun getQueueItem( @PathVariable("number") number: kotlin.String
): ResponseEntity<Queue> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }
}
