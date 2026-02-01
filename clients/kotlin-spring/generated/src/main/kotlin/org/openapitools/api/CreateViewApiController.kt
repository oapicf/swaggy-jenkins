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
import org.openapitools.api.CreateViewApiController.Companion.BASE_PATH

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
class CreateViewApiController() {

    @Operation(
        summary = "",
        operationId = "postCreateView",
        description = """Create a new view using view configuration""",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully created the view"),
            ApiResponse(responseCode = "400", description = "An error has occurred - error message is embedded inside the HTML response", content = [Content(schema = Schema(implementation = kotlin.String::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.POST],
        value = [PATH_POST_CREATE_VIEW /* "/createView" */],
        produces = ["*/*"],
        consumes = ["application/json"]
    )
    fun postCreateView(
        @NotNull @Parameter(description = "Name of the new view", required = true) @Valid @RequestParam(value = "name", required = true) name: kotlin.String,
        @Parameter(description = "CSRF protection token", `in` = ParameterIn.HEADER) @RequestHeader(value = "Jenkins-Crumb", required = false) jenkinsCrumb: kotlin.String?,
        @Parameter(description = "Content type header application/xml", `in` = ParameterIn.HEADER) @RequestHeader(value = "Content-Type", required = false) contentType: kotlin.String?,
        @Parameter(description = "View configuration in config.xml format") @Valid @RequestBody(required = false) body: kotlin.String?
    ): ResponseEntity<Unit> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    companion object {
        //for your own safety never directly reuse these path definitions in tests
        const val BASE_PATH: String = ""
        const val PATH_POST_CREATE_VIEW: String = "/createView"
    }
}
