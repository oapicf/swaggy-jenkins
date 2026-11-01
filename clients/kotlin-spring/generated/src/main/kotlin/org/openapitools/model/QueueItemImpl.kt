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
 * @param propertyClass 
 * @param expectedBuildNumber 
 * @param id 
 * @param pipeline 
 * @param queuedTime 
 */
data class QueueItemImpl(

    @Schema(description = "")
    @param:JsonProperty("_class")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("expectedBuildNumber")
    @get:JsonProperty("expectedBuildNumber") val expectedBuildNumber: kotlin.Int? = null,

    @Schema(description = "")
    @param:JsonProperty("id")
    @get:JsonProperty("id") val id: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("pipeline")
    @get:JsonProperty("pipeline") val pipeline: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("queuedTime")
    @get:JsonProperty("queuedTime") val queuedTime: kotlin.Int? = null
) {

}

