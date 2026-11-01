package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.PipelinelatestRun
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

    @Schema(description = "")
    @param:JsonProperty("_class")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("organization")
    @get:JsonProperty("organization") val organization: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("name")
    @get:JsonProperty("name") val name: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("displayName")
    @get:JsonProperty("displayName") val displayName: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("fullName")
    @get:JsonProperty("fullName") val fullName: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("weatherScore")
    @get:JsonProperty("weatherScore") val weatherScore: kotlin.Int? = null,

    @Schema(description = "")
    @param:JsonProperty("estimatedDurationInMillis")
    @get:JsonProperty("estimatedDurationInMillis") val estimatedDurationInMillis: kotlin.Int? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("latestRun")
    @get:JsonProperty("latestRun") val latestRun: PipelinelatestRun? = null
) {

}

