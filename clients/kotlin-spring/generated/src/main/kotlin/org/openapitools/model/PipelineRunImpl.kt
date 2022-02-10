package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.PipelineRunImpllinks
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size
import javax.validation.Valid

/**
 * 
 * @param propertyClass 
 * @param links 
 * @param durationInMillis 
 * @param enQueueTime 
 * @param endTime 
 * @param estimatedDurationInMillis 
 * @param id 
 * @param organization 
 * @param pipeline 
 * @param result 
 * @param runSummary 
 * @param startTime 
 * @param state 
 * @param type 
 * @param commitId 
 */
data class PipelineRunImpl(

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:Valid
    @field:JsonProperty("_links") val links: PipelineRunImpllinks? = null,

    @field:JsonProperty("durationInMillis") val durationInMillis: kotlin.Int? = null,

    @field:JsonProperty("enQueueTime") val enQueueTime: kotlin.String? = null,

    @field:JsonProperty("endTime") val endTime: kotlin.String? = null,

    @field:JsonProperty("estimatedDurationInMillis") val estimatedDurationInMillis: kotlin.Int? = null,

    @field:JsonProperty("id") val id: kotlin.String? = null,

    @field:JsonProperty("organization") val organization: kotlin.String? = null,

    @field:JsonProperty("pipeline") val pipeline: kotlin.String? = null,

    @field:JsonProperty("result") val result: kotlin.String? = null,

    @field:JsonProperty("runSummary") val runSummary: kotlin.String? = null,

    @field:JsonProperty("startTime") val startTime: kotlin.String? = null,

    @field:JsonProperty("state") val state: kotlin.String? = null,

    @field:JsonProperty("type") val type: kotlin.String? = null,

    @field:JsonProperty("commitId") val commitId: kotlin.String? = null
) {

}

