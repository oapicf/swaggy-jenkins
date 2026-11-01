package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
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
    @param:JsonProperty("_class")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("displayName")
    @get:JsonProperty("displayName") val displayName: kotlin.String? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("executors")
    @get:JsonProperty("executors") val executors: kotlin.collections.List<HudsonMasterComputerexecutors>? = null,

    @Schema(description = "")
    @param:JsonProperty("icon")
    @get:JsonProperty("icon") val icon: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("iconClassName")
    @get:JsonProperty("iconClassName") val iconClassName: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("idle")
    @get:JsonProperty("idle") val idle: kotlin.Boolean? = null,

    @Schema(description = "")
    @param:JsonProperty("jnlpAgent")
    @get:JsonProperty("jnlpAgent") val jnlpAgent: kotlin.Boolean? = null,

    @Schema(description = "")
    @param:JsonProperty("launchSupported")
    @get:JsonProperty("launchSupported") val launchSupported: kotlin.Boolean? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("loadStatistics")
    @get:JsonProperty("loadStatistics") val loadStatistics: Label1? = null,

    @Schema(description = "")
    @param:JsonProperty("manualLaunchAllowed")
    @get:JsonProperty("manualLaunchAllowed") val manualLaunchAllowed: kotlin.Boolean? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("monitorData")
    @get:JsonProperty("monitorData") val monitorData: HudsonMasterComputermonitorData? = null,

    @Schema(description = "")
    @param:JsonProperty("numExecutors")
    @get:JsonProperty("numExecutors") val numExecutors: kotlin.Int? = null,

    @Schema(description = "")
    @param:JsonProperty("offline")
    @get:JsonProperty("offline") val offline: kotlin.Boolean? = null,

    @Schema(description = "")
    @param:JsonProperty("offlineCause")
    @get:JsonProperty("offlineCause") val offlineCause: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("offlineCauseReason")
    @get:JsonProperty("offlineCauseReason") val offlineCauseReason: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("temporarilyOffline")
    @get:JsonProperty("temporarilyOffline") val temporarilyOffline: kotlin.Boolean? = null
) {

}

