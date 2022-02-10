package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.InputStepImpl
import org.openapitools.model.PipelineStepImpllinks
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
 * @param displayName 
 * @param durationInMillis 
 * @param id 
 * @param input 
 * @param result 
 * @param startTime 
 * @param state 
 */
data class PipelineStepImpl(

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:Valid
    @field:JsonProperty("_links") val links: PipelineStepImpllinks? = null,

    @field:JsonProperty("displayName") val displayName: kotlin.String? = null,

    @field:JsonProperty("durationInMillis") val durationInMillis: kotlin.Int? = null,

    @field:JsonProperty("id") val id: kotlin.String? = null,

    @field:Valid
    @field:JsonProperty("input") val input: InputStepImpl? = null,

    @field:JsonProperty("result") val result: kotlin.String? = null,

    @field:JsonProperty("startTime") val startTime: kotlin.String? = null,

    @field:JsonProperty("state") val state: kotlin.String? = null
) {

}

