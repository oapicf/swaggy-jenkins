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
    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("number") val number: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("url") val url: kotlin.String? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @field:JsonProperty("actions") val actions: kotlin.collections.List<CauseAction>? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("building") val building: kotlin.Boolean? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("description") val description: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("displayName") val displayName: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("duration") val duration: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("estimatedDuration") val estimatedDuration: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("executor") val executor: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("fullDisplayName") val fullDisplayName: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("id") val id: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("keepLog") val keepLog: kotlin.Boolean? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("queueId") val queueId: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("result") val result: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("timestamp") val timestamp: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("builtOn") val builtOn: kotlin.String? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @field:JsonProperty("changeSet") val changeSet: EmptyChangeLogSet? = null
) {

}

