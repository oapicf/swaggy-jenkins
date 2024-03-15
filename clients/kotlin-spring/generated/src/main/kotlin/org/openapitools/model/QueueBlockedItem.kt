package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.CauseAction
import org.openapitools.model.FreeStyleProject
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

    @Schema(example = "null", description = "")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("actions") val actions: kotlin.collections.List<CauseAction>? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("blocked") val blocked: kotlin.Boolean? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("buildable") val buildable: kotlin.Boolean? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("id") val id: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("inQueueSince") val inQueueSince: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("params") val params: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("stuck") val stuck: kotlin.Boolean? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("task") val task: FreeStyleProject? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("url") val url: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("why") val why: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("buildableStartMilliseconds") val buildableStartMilliseconds: kotlin.Int? = null
) {

}

