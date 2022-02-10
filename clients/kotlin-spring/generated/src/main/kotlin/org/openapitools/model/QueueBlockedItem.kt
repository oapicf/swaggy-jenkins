package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.CauseAction
import org.openapitools.model.FreeStyleProject
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
 * @param actions 
 * @param blocked 
 * @param buildable 
 * @param id 
 * @param inQueueSince 
 * @param params 
 * @param stuck 
 * @param task 
 * @param url 
 * @param why 
 * @param buildableStartMilliseconds 
 */
data class QueueBlockedItem(

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:Valid
    @field:JsonProperty("actions") val actions: kotlin.collections.List<CauseAction>? = null,

    @field:JsonProperty("blocked") val blocked: kotlin.Boolean? = null,

    @field:JsonProperty("buildable") val buildable: kotlin.Boolean? = null,

    @field:JsonProperty("id") val id: kotlin.Int? = null,

    @field:JsonProperty("inQueueSince") val inQueueSince: kotlin.Int? = null,

    @field:JsonProperty("params") val params: kotlin.String? = null,

    @field:JsonProperty("stuck") val stuck: kotlin.Boolean? = null,

    @field:Valid
    @field:JsonProperty("task") val task: FreeStyleProject? = null,

    @field:JsonProperty("url") val url: kotlin.String? = null,

    @field:JsonProperty("why") val why: kotlin.String? = null,

    @field:JsonProperty("buildableStartMilliseconds") val buildableStartMilliseconds: kotlin.Int? = null
) {

}

