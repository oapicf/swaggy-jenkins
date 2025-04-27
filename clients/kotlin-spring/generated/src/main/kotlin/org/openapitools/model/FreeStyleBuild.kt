package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.CauseAction
import org.openapitools.model.EmptyChangeLogSet
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
 * @param number 
 * @param url 
 * @param actions 
 * @param building 
 * @param description 
 * @param displayName 
 * @param duration 
 * @param estimatedDuration 
 * @param executor 
 * @param fullDisplayName 
 * @param id 
 * @param keepLog 
 * @param queueId 
 * @param result 
 * @param timestamp 
 * @param builtOn 
 * @param changeSet 
 */
data class FreeStyleBuild(

    @Schema(example = "null", description = "")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("number") val number: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("url") val url: kotlin.String? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("actions") val actions: kotlin.collections.List<CauseAction>? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("building") val building: kotlin.Boolean? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("description") val description: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("displayName") val displayName: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("duration") val duration: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("estimatedDuration") val estimatedDuration: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("executor") val executor: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("fullDisplayName") val fullDisplayName: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("id") val id: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("keepLog") val keepLog: kotlin.Boolean? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("queueId") val queueId: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("result") val result: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("timestamp") val timestamp: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("builtOn") val builtOn: kotlin.String? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("changeSet") val changeSet: EmptyChangeLogSet? = null
    ) {

}

