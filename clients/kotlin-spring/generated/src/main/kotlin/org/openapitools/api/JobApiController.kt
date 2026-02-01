package org.openapitools.api

import org.openapitools.model.FreeStyleBuild
import org.openapitools.model.FreeStyleProject
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
import org.openapitools.api.JobApiController.Companion.BASE_PATH

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
class JobApiController() {

    @Operation(
        summary = "",
        operationId = "getJob",
        description = """Retrieve job details""",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved job details", content = [Content(schema = Schema(implementation = FreeStyleProject::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password"),
            ApiResponse(responseCode = "404", description = "Job cannot be found on Jenkins instance") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = [PATH_GET_JOB /* "/job/{name}/api/json" */],
        produces = ["application/json"]
    )
    fun getJob(
        @Parameter(description = "Name of the job", required = true) @PathVariable("name") name: kotlin.String
    ): ResponseEntity<FreeStyleProject> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getJobConfig",
        description = """Retrieve job configuration""",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved job configuration in config.xml format", content = [Content(schema = Schema(implementation = kotlin.String::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password"),
            ApiResponse(responseCode = "404", description = "Job cannot be found on Jenkins instance") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = [PATH_GET_JOB_CONFIG /* "/job/{name}/config.xml" */],
        produces = ["text/xml"]
    )
    fun getJobConfig(
        @Parameter(description = "Name of the job", required = true) @PathVariable("name") name: kotlin.String
    ): ResponseEntity<kotlin.String> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getJobLastBuild",
        description = """Retrieve job's last build details""",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved job's last build details", content = [Content(schema = Schema(implementation = FreeStyleBuild::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password"),
            ApiResponse(responseCode = "404", description = "Job cannot be found on Jenkins instance") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = [PATH_GET_JOB_LAST_BUILD /* "/job/{name}/lastBuild/api/json" */],
        produces = ["application/json"]
    )
    fun getJobLastBuild(
        @Parameter(description = "Name of the job", required = true) @PathVariable("name") name: kotlin.String
    ): ResponseEntity<FreeStyleBuild> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "getJobProgressiveText",
        description = """Retrieve job's build progressive text output""",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved job's build progressive text output"),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password"),
            ApiResponse(responseCode = "404", description = "Job cannot be found on Jenkins instance") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = [PATH_GET_JOB_PROGRESSIVE_TEXT /* "/job/{name}/{number}/logText/progressiveText" */]
    )
    fun getJobProgressiveText(
        @Parameter(description = "Name of the job", required = true) @PathVariable("name") name: kotlin.String,
        @Parameter(description = "Build number", required = true) @PathVariable("number") number: kotlin.String,
        @NotNull @Parameter(description = "Starting point of progressive text output", required = true) @Valid @RequestParam(value = "start", required = true) start: kotlin.String
    ): ResponseEntity<Unit> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "postJobBuild",
        description = """Build a job""",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully built the job (backward compatibility for older versions of Jenkins)"),
            ApiResponse(responseCode = "201", description = "Successfully built the job"),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password"),
            ApiResponse(responseCode = "404", description = "Job cannot be found on Jenkins instance") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.POST],
        value = [PATH_POST_JOB_BUILD /* "/job/{name}/build" */]
    )
    fun postJobBuild(
        @Parameter(description = "Name of the job", required = true) @PathVariable("name") name: kotlin.String,
        @NotNull @Parameter(description = "", required = true) @Valid @RequestParam(value = "json", required = true) json: kotlin.String,
        @Parameter(description = "") @Valid @RequestParam(value = "token", required = false) token: kotlin.String?,
        @Parameter(description = "CSRF protection token", `in` = ParameterIn.HEADER) @RequestHeader(value = "Jenkins-Crumb", required = false) jenkinsCrumb: kotlin.String?
    ): ResponseEntity<Unit> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "postJobConfig",
        description = """Update job configuration""",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully retrieved job configuration in config.xml format"),
            ApiResponse(responseCode = "400", description = "An error has occurred - error message is embedded inside the HTML response", content = [Content(schema = Schema(implementation = kotlin.String::class))]),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password"),
            ApiResponse(responseCode = "404", description = "Job cannot be found on Jenkins instance") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.POST],
        value = [PATH_POST_JOB_CONFIG /* "/job/{name}/config.xml" */],
        produces = ["*/*"],
        consumes = ["application/json"]
    )
    fun postJobConfig(
        @Parameter(description = "Name of the job", required = true) @PathVariable("name") name: kotlin.String,
        @Parameter(description = "Job configuration in config.xml format", required = true) @Valid @RequestBody body: kotlin.String,
        @Parameter(description = "CSRF protection token", `in` = ParameterIn.HEADER) @RequestHeader(value = "Jenkins-Crumb", required = false) jenkinsCrumb: kotlin.String?
    ): ResponseEntity<Unit> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "postJobDelete",
        description = """Delete a job""",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully deleted the job"),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password"),
            ApiResponse(responseCode = "404", description = "Job cannot be found on Jenkins instance") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.POST],
        value = [PATH_POST_JOB_DELETE /* "/job/{name}/doDelete" */]
    )
    fun postJobDelete(
        @Parameter(description = "Name of the job", required = true) @PathVariable("name") name: kotlin.String,
        @Parameter(description = "CSRF protection token", `in` = ParameterIn.HEADER) @RequestHeader(value = "Jenkins-Crumb", required = false) jenkinsCrumb: kotlin.String?
    ): ResponseEntity<Unit> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "postJobDisable",
        description = """Disable a job""",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully disabled the job"),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password"),
            ApiResponse(responseCode = "404", description = "Job cannot be found on Jenkins instance") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.POST],
        value = [PATH_POST_JOB_DISABLE /* "/job/{name}/disable" */]
    )
    fun postJobDisable(
        @Parameter(description = "Name of the job", required = true) @PathVariable("name") name: kotlin.String,
        @Parameter(description = "CSRF protection token", `in` = ParameterIn.HEADER) @RequestHeader(value = "Jenkins-Crumb", required = false) jenkinsCrumb: kotlin.String?
    ): ResponseEntity<Unit> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "postJobEnable",
        description = """Enable a job""",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully enabled the job"),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password"),
            ApiResponse(responseCode = "404", description = "Job cannot be found on Jenkins instance") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.POST],
        value = [PATH_POST_JOB_ENABLE /* "/job/{name}/enable" */]
    )
    fun postJobEnable(
        @Parameter(description = "Name of the job", required = true) @PathVariable("name") name: kotlin.String,
        @Parameter(description = "CSRF protection token", `in` = ParameterIn.HEADER) @RequestHeader(value = "Jenkins-Crumb", required = false) jenkinsCrumb: kotlin.String?
    ): ResponseEntity<Unit> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    @Operation(
        summary = "",
        operationId = "postJobLastBuildStop",
        description = """Stop a job""",
        responses = [
            ApiResponse(responseCode = "200", description = "Successfully stopped the job"),
            ApiResponse(responseCode = "401", description = "Authentication failed - incorrect username and/or password"),
            ApiResponse(responseCode = "403", description = "Jenkins requires authentication - please set username and password"),
            ApiResponse(responseCode = "404", description = "Job cannot be found on Jenkins instance") ],
        security = [ SecurityRequirement(name = "jenkins_auth") ]
    )
    @RequestMapping(
        method = [RequestMethod.POST],
        value = [PATH_POST_JOB_LAST_BUILD_STOP /* "/job/{name}/lastBuild/stop" */]
    )
    fun postJobLastBuildStop(
        @Parameter(description = "Name of the job", required = true) @PathVariable("name") name: kotlin.String,
        @Parameter(description = "CSRF protection token", `in` = ParameterIn.HEADER) @RequestHeader(value = "Jenkins-Crumb", required = false) jenkinsCrumb: kotlin.String?
    ): ResponseEntity<Unit> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }

    companion object {
        //for your own safety never directly reuse these path definitions in tests
        const val BASE_PATH: String = ""
        const val PATH_GET_JOB: String = "/job/{name}/api/json"
        const val PATH_GET_JOB_CONFIG: String = "/job/{name}/config.xml"
        const val PATH_GET_JOB_LAST_BUILD: String = "/job/{name}/lastBuild/api/json"
        const val PATH_GET_JOB_PROGRESSIVE_TEXT: String = "/job/{name}/{number}/logText/progressiveText"
        const val PATH_POST_JOB_BUILD: String = "/job/{name}/build"
        const val PATH_POST_JOB_CONFIG: String = "/job/{name}/config.xml"
        const val PATH_POST_JOB_DELETE: String = "/job/{name}/doDelete"
        const val PATH_POST_JOB_DISABLE: String = "/job/{name}/disable"
        const val PATH_POST_JOB_ENABLE: String = "/job/{name}/enable"
        const val PATH_POST_JOB_LAST_BUILD_STOP: String = "/job/{name}/lastBuild/stop"
    }
}
