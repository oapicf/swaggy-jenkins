package org.openapitools.api

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
class JwtAuthApiController() {

    @Operation(
        summary = "",
        operationId = "getJsonWebKey",
        description = """Retrieve JSON Web Key""",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved JWT token", content = [Content(schema = Schema(implementation = kotlin.String::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/jwt-auth/jwks/{key}"],
        produces = ["application/json"]
    )
    fun getJsonWebKey(@Parameter(description = "Key ID received as part of JWT header field kid", required = true) @PathVariable("key") key: kotlin.Int): ResponseEntity<kotlin.String> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getJsonWebToken",
        description = """Retrieve JSON Web Token""",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved JWT token", content = [Content(schema = Schema(implementation = kotlin.String::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/jwt-auth/token"],
        produces = ["application/json"]
    )
    fun getJsonWebToken(@Parameter(description = "Token expiry time in minutes, default: 30 minutes") @Valid @RequestParam(value = "expiryTimeInMins", required = false) expiryTimeInMins: kotlin.Int?,@Parameter(description = "Maximum token expiry time in minutes, default: 480 minutes") @Valid @RequestParam(value = "maxExpiryTimeInMins", required = false) maxExpiryTimeInMins: kotlin.Int?): ResponseEntity<kotlin.String> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }
}
