package org.openapitools.api

import org.openapitools.model.Hudson
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
import org.openapitools.api.ApiApiController.Companion.BASE_PATH

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
@RequestMapping("\${openapi.swaggyJenkins.base-path:\${api.base-path:$BASE_PATH}}")
class ApiApiController() {

    @Operation(
        summary = "",
        operationId = "getJenkins",
        description = """Retrieve Jenkins details""",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved Jenkins details", content = [Content(schema = Schema(implementation = Hudson::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = [PATH_GET_JENKINS /* "/api/json" */],
        produces = ["application/json"]
    )
    fun getJenkins(): ResponseEntity<Hudson> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "headJenkins",
        description = """Retrieve Jenkins headers""",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved Jenkins headers"),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.HEAD],
        value = [PATH_HEAD_JENKINS /* "/api/json" */]
    )
    fun headJenkins(): ResponseEntity<Unit> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    companion object {
        //for your own safety never directly reuse these path definitions in tests
        const val BASE_PATH: String = ""
        const val PATH_GET_JENKINS: String = "/api/json"
        const val PATH_HEAD_JENKINS: String = "/api/json"
    }
}
