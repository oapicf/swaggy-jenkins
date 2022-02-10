package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.PipelinelatestRun
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
 * @param organization 
 * @param name 
 * @param displayName 
 * @param fullName 
 * @param weatherScore 
 * @param estimatedDurationInMillis 
 * @param latestRun 
 */
data class Pipeline(

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:JsonProperty("organization") val organization: kotlin.String? = null,

    @field:JsonProperty("name") val name: kotlin.String? = null,

    @field:JsonProperty("displayName") val displayName: kotlin.String? = null,

    @field:JsonProperty("fullName") val fullName: kotlin.String? = null,

    @field:JsonProperty("weatherScore") val weatherScore: kotlin.Int? = null,

    @field:JsonProperty("estimatedDurationInMillis") val estimatedDurationInMillis: kotlin.Int? = null,

    @field:Valid
    @field:JsonProperty("latestRun") val latestRun: PipelinelatestRun? = null
) {

}

