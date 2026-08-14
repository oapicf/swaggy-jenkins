package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonInclude
import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonSetter
import com.fasterxml.jackson.annotation.Nulls
import org.openapitools.model.HudsonMasterComputerexecutors
import org.openapitools.model.HudsonMasterComputermonitorData
import org.openapitools.model.Label1
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
 * @param displayName 
 * @param executors 
 * @param icon 
 * @param iconClassName 
 * @param idle 
 * @param jnlpAgent 
 * @param launchSupported 
 * @param loadStatistics 
 * @param manualLaunchAllowed 
 * @param monitorData 
 * @param numExecutors 
 * @param offline 
 * @param offlineCause 
 * @param offlineCauseReason 
 * @param temporarilyOffline 
 */
data class HudsonMasterComputer(

    @Schema(description = "")
    @field:JsonInclude(JsonInclude.Include.NON_NULL)
    @field:JsonSetter(nulls = Nulls.SKIP)
    @param:JsonProperty("_class")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @Schema(description = "")
    @field:JsonInclude(JsonInclude.Include.NON_NULL)
    @field:JsonSetter(nulls = Nulls.SKIP)
    @param:JsonProperty("displayName")
    @get:JsonProperty("displayName") val displayName: kotlin.String? = null,

    @field:Valid
    @Schema(description = "")
    @field:JsonInclude(JsonInclude.Include.NON_NULL)
    @field:JsonSetter(nulls = Nulls.SKIP)
    @param:JsonProperty("executors")
    @get:JsonProperty("executors") val executors: kotlin.collections.List<HudsonMasterComputerexecutors>? = null,

    @Schema(description = "")
    @field:JsonInclude(JsonInclude.Include.NON_NULL)
    @field:JsonSetter(nulls = Nulls.SKIP)
    @param:JsonProperty("icon")
    @get:JsonProperty("icon") val icon: kotlin.String? = null,

    @Schema(description = "")
    @field:JsonInclude(JsonInclude.Include.NON_NULL)
    @field:JsonSetter(nulls = Nulls.SKIP)
    @param:JsonProperty("iconClassName")
    @get:JsonProperty("iconClassName") val iconClassName: kotlin.String? = null,

    @Schema(description = "")
    @field:JsonInclude(JsonInclude.Include.NON_NULL)
    @field:JsonSetter(nulls = Nulls.SKIP)
    @param:JsonProperty("idle")
    @get:JsonProperty("idle") val idle: kotlin.Boolean? = null,

    @Schema(description = "")
    @field:JsonInclude(JsonInclude.Include.NON_NULL)
    @field:JsonSetter(nulls = Nulls.SKIP)
    @param:JsonProperty("jnlpAgent")
    @get:JsonProperty("jnlpAgent") val jnlpAgent: kotlin.Boolean? = null,

    @Schema(description = "")
    @field:JsonInclude(JsonInclude.Include.NON_NULL)
    @field:JsonSetter(nulls = Nulls.SKIP)
    @param:JsonProperty("launchSupported")
    @get:JsonProperty("launchSupported") val launchSupported: kotlin.Boolean? = null,

    @field:Valid
    @Schema(description = "")
    @field:JsonInclude(JsonInclude.Include.NON_NULL)
    @field:JsonSetter(nulls = Nulls.SKIP)
    @param:JsonProperty("loadStatistics")
    @get:JsonProperty("loadStatistics") val loadStatistics: Label1? = null,

    @Schema(description = "")
    @field:JsonInclude(JsonInclude.Include.NON_NULL)
    @field:JsonSetter(nulls = Nulls.SKIP)
    @param:JsonProperty("manualLaunchAllowed")
    @get:JsonProperty("manualLaunchAllowed") val manualLaunchAllowed: kotlin.Boolean? = null,

    @field:Valid
    @Schema(description = "")
    @field:JsonInclude(JsonInclude.Include.NON_NULL)
    @field:JsonSetter(nulls = Nulls.SKIP)
    @param:JsonProperty("monitorData")
    @get:JsonProperty("monitorData") val monitorData: HudsonMasterComputermonitorData? = null,

    @Schema(description = "")
    @field:JsonInclude(JsonInclude.Include.NON_NULL)
    @field:JsonSetter(nulls = Nulls.SKIP)
    @param:JsonProperty("numExecutors")
    @get:JsonProperty("numExecutors") val numExecutors: kotlin.Int? = null,

    @Schema(description = "")
    @field:JsonInclude(JsonInclude.Include.NON_NULL)
    @field:JsonSetter(nulls = Nulls.SKIP)
    @param:JsonProperty("offline")
    @get:JsonProperty("offline") val offline: kotlin.Boolean? = null,

    @Schema(description = "")
    @field:JsonInclude(JsonInclude.Include.NON_NULL)
    @field:JsonSetter(nulls = Nulls.SKIP)
    @param:JsonProperty("offlineCause")
    @get:JsonProperty("offlineCause") val offlineCause: kotlin.String? = null,

    @Schema(description = "")
    @field:JsonInclude(JsonInclude.Include.NON_NULL)
    @field:JsonSetter(nulls = Nulls.SKIP)
    @param:JsonProperty("offlineCauseReason")
    @get:JsonProperty("offlineCauseReason") val offlineCauseReason: kotlin.String? = null,

    @Schema(description = "")
    @field:JsonInclude(JsonInclude.Include.NON_NULL)
    @field:JsonSetter(nulls = Nulls.SKIP)
    @param:JsonProperty("temporarilyOffline")
    @get:JsonProperty("temporarilyOffline") val temporarilyOffline: kotlin.Boolean? = null
) {

}

