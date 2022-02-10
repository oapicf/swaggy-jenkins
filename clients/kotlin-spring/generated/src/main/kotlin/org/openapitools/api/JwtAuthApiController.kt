package org.openapitools.api

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
class JwtAuthApiController() {


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/jwt-auth/jwks/{key}"],
        produces = ["application/json"]
    )
    fun getJsonWebKey( @PathVariable("key") key: kotlin.Int
): ResponseEntity<kotlin.String> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/jwt-auth/token"],
        produces = ["application/json"]
    )
    fun getJsonWebToken( @RequestParam(value = "expiryTimeInMins", required = false) expiryTimeInMins: kotlin.Int?
, @RequestParam(value = "maxExpiryTimeInMins", required = false) maxExpiryTimeInMins: kotlin.Int?
): ResponseEntity<kotlin.String> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }
}
