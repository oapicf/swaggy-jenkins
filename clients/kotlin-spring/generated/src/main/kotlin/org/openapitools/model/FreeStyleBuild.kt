package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.CauseAction
import org.openapitools.model.EmptyChangeLogSet
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

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:JsonProperty("number") val number: kotlin.Int? = null,

    @field:JsonProperty("url") val url: kotlin.String? = null,

    @field:Valid
    @field:JsonProperty("actions") val actions: kotlin.collections.List<CauseAction>? = null,

    @field:JsonProperty("building") val building: kotlin.Boolean? = null,

    @field:JsonProperty("description") val description: kotlin.String? = null,

    @field:JsonProperty("displayName") val displayName: kotlin.String? = null,

    @field:JsonProperty("duration") val duration: kotlin.Int? = null,

    @field:JsonProperty("estimatedDuration") val estimatedDuration: kotlin.Int? = null,

    @field:JsonProperty("executor") val executor: kotlin.String? = null,

    @field:JsonProperty("fullDisplayName") val fullDisplayName: kotlin.String? = null,

    @field:JsonProperty("id") val id: kotlin.String? = null,

    @field:JsonProperty("keepLog") val keepLog: kotlin.Boolean? = null,

    @field:JsonProperty("queueId") val queueId: kotlin.Int? = null,

    @field:JsonProperty("result") val result: kotlin.String? = null,

    @field:JsonProperty("timestamp") val timestamp: kotlin.Int? = null,

    @field:JsonProperty("builtOn") val builtOn: kotlin.String? = null,

    @field:Valid
    @field:JsonProperty("changeSet") val changeSet: EmptyChangeLogSet? = null
) {

}

