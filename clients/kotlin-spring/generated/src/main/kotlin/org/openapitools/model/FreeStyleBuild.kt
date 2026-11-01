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

    @Schema(description = "")
    @param:JsonProperty("_class")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("number")
    @get:JsonProperty("number") val number: kotlin.Int? = null,

    @Schema(description = "")
    @param:JsonProperty("url")
    @get:JsonProperty("url") val url: kotlin.String? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("actions")
    @get:JsonProperty("actions") val actions: kotlin.collections.List<CauseAction>? = null,

    @Schema(description = "")
    @param:JsonProperty("building")
    @get:JsonProperty("building") val building: kotlin.Boolean? = null,

    @Schema(description = "")
    @param:JsonProperty("description")
    @get:JsonProperty("description") val description: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("displayName")
    @get:JsonProperty("displayName") val displayName: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("duration")
    @get:JsonProperty("duration") val duration: kotlin.Int? = null,

    @Schema(description = "")
    @param:JsonProperty("estimatedDuration")
    @get:JsonProperty("estimatedDuration") val estimatedDuration: kotlin.Int? = null,

    @Schema(description = "")
    @param:JsonProperty("executor")
    @get:JsonProperty("executor") val executor: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("fullDisplayName")
    @get:JsonProperty("fullDisplayName") val fullDisplayName: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("id")
    @get:JsonProperty("id") val id: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("keepLog")
    @get:JsonProperty("keepLog") val keepLog: kotlin.Boolean? = null,

    @Schema(description = "")
    @param:JsonProperty("queueId")
    @get:JsonProperty("queueId") val queueId: kotlin.Int? = null,

    @Schema(description = "")
    @param:JsonProperty("result")
    @get:JsonProperty("result") val result: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("timestamp")
    @get:JsonProperty("timestamp") val timestamp: kotlin.Int? = null,

    @Schema(description = "")
    @param:JsonProperty("builtOn")
    @get:JsonProperty("builtOn") val builtOn: kotlin.String? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("changeSet")
    @get:JsonProperty("changeSet") val changeSet: EmptyChangeLogSet? = null
) {

}

