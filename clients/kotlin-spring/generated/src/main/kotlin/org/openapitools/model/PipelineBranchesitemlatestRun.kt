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
 * @param durationInMillis 
 * @param estimatedDurationInMillis 
 * @param enQueueTime 
 * @param endTime 
 * @param id 
 * @param organization 
 * @param pipeline 
 * @param result 
 * @param runSummary 
 * @param startTime 
 * @param state 
 * @param type 
 * @param commitId 
 * @param propertyClass 
 */
data class PipelineBranchesitemlatestRun(

    @Schema(example = "null", description = "")
    @get:JsonProperty("durationInMillis") val durationInMillis: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("estimatedDurationInMillis") val estimatedDurationInMillis: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("enQueueTime") val enQueueTime: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("endTime") val endTime: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("id") val id: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("organization") val organization: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("pipeline") val pipeline: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("result") val result: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("runSummary") val runSummary: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("startTime") val startTime: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("state") val state: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("type") val type: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("commitId") val commitId: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null
) {

}

