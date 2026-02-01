package org.openapitools.api

import org.openapitools.model.ListView
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
import org.openapitools.api.ViewApiController.Companion.BASE_PATH

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
class ViewApiController() {

    @Operation(
        summary = "",
        operationId = "getView",
        description = """Retrieve view details""",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved view details", content = [Content(schema = Schema(implementation = ListView::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password"),
            ApiResponse(responseCode = "404", description = "View cannot be found on Jenkins instance") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = [PATH_GET_VIEW /* "/view/{name}/api/json" */],
        produces = ["application/json"]
    )
    fun getView(
        @Parameter(description = "Name of the view", required = true) @PathVariable("name") name: kotlin.String
    ): ResponseEntity<ListView> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getViewConfig",
        description = """Retrieve view configuration""",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved view configuration in config.xml format", content = [Content(schema = Schema(implementation = kotlin.String::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password"),
            ApiResponse(responseCode = "404", description = "View cannot be found on Jenkins instance") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = [PATH_GET_VIEW_CONFIG /* "/view/{name}/config.xml" */],
        produces = ["text/xml"]
    )
    fun getViewConfig(
        @Parameter(description = "Name of the view", required = true) @PathVariable("name") name: kotlin.String
    ): ResponseEntity<kotlin.String> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "postViewConfig",
        description = """Update view configuration""",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully updated view configuration"),
            ApiResponse(responseCode = "400", description = "An error has occurred - error message is embedded inside the HTML response", content = [Content(schema = Schema(implementation = kotlin.String::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password"),
            ApiResponse(responseCode = "404", description = "View cannot be found on Jenkins instance") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.POST],
        value = [PATH_POST_VIEW_CONFIG /* "/view/{name}/config.xml" */],
        produces = ["*/*"],
        consumes = ["application/json"]
    )
    fun postViewConfig(
        @Parameter(description = "Name of the view", required = true) @PathVariable("name") name: kotlin.String,
        @Parameter(description = "View configuration in config.xml format", required = true) @Valid @RequestBody body: kotlin.String,
        @Parameter(description = "CSRF protection token", `in` = ParameterIn.HEADER) @RequestHeader(value = "Jenkins-Crumb", required = false) jenkinsCrumb: kotlin.String?
    ): ResponseEntity<Unit> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    companion object {
        //for your own safety never directly reuse these path definitions in tests
        const val BASE_PATH: String = ""
        const val PATH_GET_VIEW: String = "/view/{name}/api/json"
        const val PATH_GET_VIEW_CONFIG: String = "/view/{name}/config.xml"
        const val PATH_POST_VIEW_CONFIG: String = "/view/{name}/config.xml"
    }
}
