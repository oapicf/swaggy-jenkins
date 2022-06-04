package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.PipelineBranchesitemlatestRun
import org.openapitools.model.PipelineBranchesitempullRequest
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Email
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size
import javax.validation.Valid
import io.swagger.v3.oas.annotations.media.Schema

/**
 * 
 * @param displayName 
 * @param estimatedDurationInMillis 
 * @param name 
 * @param weatherScore 
 * @param latestRun 
 * @param organization 
 * @param pullRequest 
 * @param totalNumberOfPullRequests 
 * @param propertyClass 
 */
data class PipelineBranchesitem(

    @Schema(example = "null", description = "")
    @field:JsonProperty("displayName") val displayName: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("estimatedDurationInMillis") val estimatedDurationInMillis: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("name") val name: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("weatherScore") val weatherScore: kotlin.Int? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @field:JsonProperty("latestRun") val latestRun: PipelineBranchesitemlatestRun? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("organization") val organization: kotlin.String? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @field:JsonProperty("pullRequest") val pullRequest: PipelineBranchesitempullRequest? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("totalNumberOfPullRequests") val totalNumberOfPullRequests: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null
) {

}

