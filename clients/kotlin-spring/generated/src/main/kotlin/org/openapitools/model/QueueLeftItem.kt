package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.CauseAction
import org.openapitools.model.FreeStyleBuild
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
 * @param cancelled 
 * @param executable 
 */
data class QueueLeftItem(

    @Schema(description = "")
    @param:JsonProperty("_class")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("actions")
    @get:JsonProperty("actions") val actions: kotlin.collections.List<CauseAction>? = null,

    @Schema(description = "")
    @param:JsonProperty("blocked")
    @get:JsonProperty("blocked") val blocked: kotlin.Boolean? = null,

    @Schema(description = "")
    @param:JsonProperty("buildable")
    @get:JsonProperty("buildable") val buildable: kotlin.Boolean? = null,

    @Schema(description = "")
    @param:JsonProperty("id")
    @get:JsonProperty("id") val id: kotlin.Int? = null,

    @Schema(description = "")
    @param:JsonProperty("inQueueSince")
    @get:JsonProperty("inQueueSince") val inQueueSince: kotlin.Int? = null,

    @Schema(description = "")
    @param:JsonProperty("params")
    @get:JsonProperty("params") val params: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("stuck")
    @get:JsonProperty("stuck") val stuck: kotlin.Boolean? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("task")
    @get:JsonProperty("task") val task: FreeStyleProject? = null,

    @Schema(description = "")
    @param:JsonProperty("url")
    @get:JsonProperty("url") val url: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("why")
    @get:JsonProperty("why") val why: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("cancelled")
    @get:JsonProperty("cancelled") val cancelled: kotlin.Boolean? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("executable")
    @get:JsonProperty("executable") val executable: FreeStyleBuild? = null
) {

}

