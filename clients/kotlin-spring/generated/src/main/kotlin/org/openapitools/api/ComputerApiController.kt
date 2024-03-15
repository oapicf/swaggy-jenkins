package org.openapitools.api

import org.openapitools.model.ComputerSet
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
class ComputerApiController() {

    @Operation(
        summary = "",
        operationId = "getComputer",
        description = """Retrieve computer details""",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved computer details", content = [Content(schema = Schema(implementation = ComputerSet::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/computer/api/json"],
        produces = ["application/json"]
    )
    fun getComputer(@NotNull @Parameter(description = "Recursion depth in response model", required = true) @Valid @RequestParam(value = "depth", required = true) depth: kotlin.Int): ResponseEntity<ComputerSet> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }
}
