package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
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
 * @param latestRun 
 * @param name 
 * @param organization 
 * @param weatherScore 
 * @param branchNames 
 * @param numberOfFailingBranches 
 * @param numberOfFailingPullRequests 
 * @param numberOfSuccessfulBranches 
 * @param numberOfSuccessfulPullRequests 
 * @param totalNumberOfBranches 
 * @param totalNumberOfPullRequests 
 * @param propertyClass 
 */
data class MultibranchPipeline(

    @Schema(example = "null", description = "")
    @field:JsonProperty("displayName") val displayName: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("estimatedDurationInMillis") val estimatedDurationInMillis: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("latestRun") val latestRun: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("name") val name: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("organization") val organization: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("weatherScore") val weatherScore: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("branchNames") val branchNames: kotlin.collections.List<kotlin.String>? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("numberOfFailingBranches") val numberOfFailingBranches: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("numberOfFailingPullRequests") val numberOfFailingPullRequests: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("numberOfSuccessfulBranches") val numberOfSuccessfulBranches: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("numberOfSuccessfulPullRequests") val numberOfSuccessfulPullRequests: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("totalNumberOfBranches") val totalNumberOfBranches: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("totalNumberOfPullRequests") val totalNumberOfPullRequests: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null
) {

}

