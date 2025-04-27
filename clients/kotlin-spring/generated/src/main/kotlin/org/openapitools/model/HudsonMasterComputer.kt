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

    @Schema(example = "null", description = "")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("displayName") val displayName: kotlin.String? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("executors") val executors: kotlin.collections.List<HudsonMasterComputerexecutors>? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("icon") val icon: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("iconClassName") val iconClassName: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("idle") val idle: kotlin.Boolean? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("jnlpAgent") val jnlpAgent: kotlin.Boolean? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("launchSupported") val launchSupported: kotlin.Boolean? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("loadStatistics") val loadStatistics: Label1? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("manualLaunchAllowed") val manualLaunchAllowed: kotlin.Boolean? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("monitorData") val monitorData: HudsonMasterComputermonitorData? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("numExecutors") val numExecutors: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("offline") val offline: kotlin.Boolean? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("offlineCause") val offlineCause: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("offlineCauseReason") val offlineCauseReason: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("temporarilyOffline") val temporarilyOffline: kotlin.Boolean? = null
    ) {

}

