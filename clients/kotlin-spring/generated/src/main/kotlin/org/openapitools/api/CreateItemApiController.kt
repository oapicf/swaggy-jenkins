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
class CreateItemApiController() {

    @Operation(
        summary = "",
        operationId = "postCreateItem",
        description = """Create a new job using job configuration, or copied from an existing job""",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully created a new job"),
            ApiResponse(responseCode = "400", description = "An error has occurred - error message is embedded inside the HTML response", content = [Content(schema = Schema(implementation = kotlin.String::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.POST],
        value = ["/createItem"],
        produces = ["*/*"],
        consumes = ["application/json"]
    )
    fun postCreateItem(@NotNull @Parameter(description = "Name of the new job", required = true) @Valid @RequestParam(value = "name", required = true) name: kotlin.String,@Parameter(description = "Existing job to copy from") @Valid @RequestParam(value = "from", required = false) from: kotlin.String?,@Parameter(description = "Set to 'copy' for copying an existing job") @Valid @RequestParam(value = "mode", required = false) mode: kotlin.String?,@Parameter(description = "CSRF protection token", `in` = ParameterIn.HEADER) @RequestHeader(value = "Jenkins-Crumb", required = false) jenkinsCrumb: kotlin.String?,@Parameter(description = "Content type header application/xml", `in` = ParameterIn.HEADER) @RequestHeader(value = "Content-Type", required = false) contentType: kotlin.String?,@Parameter(description = "Job configuration in config.xml format") @Valid @RequestBody(required = false) body: kotlin.String?): ResponseEntity<Unit> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }
}
