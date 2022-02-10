package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.HudsonMasterComputerexecutors
import org.openapitools.model.HudsonMasterComputermonitorData
import org.openapitools.model.Label1
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

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:JsonProperty("displayName") val displayName: kotlin.String? = null,

    @field:Valid
    @field:JsonProperty("executors") val executors: kotlin.collections.List<HudsonMasterComputerexecutors>? = null,

    @field:JsonProperty("icon") val icon: kotlin.String? = null,

    @field:JsonProperty("iconClassName") val iconClassName: kotlin.String? = null,

    @field:JsonProperty("idle") val idle: kotlin.Boolean? = null,

    @field:JsonProperty("jnlpAgent") val jnlpAgent: kotlin.Boolean? = null,

    @field:JsonProperty("launchSupported") val launchSupported: kotlin.Boolean? = null,

    @field:Valid
    @field:JsonProperty("loadStatistics") val loadStatistics: Label1? = null,

    @field:JsonProperty("manualLaunchAllowed") val manualLaunchAllowed: kotlin.Boolean? = null,

    @field:Valid
    @field:JsonProperty("monitorData") val monitorData: HudsonMasterComputermonitorData? = null,

    @field:JsonProperty("numExecutors") val numExecutors: kotlin.Int? = null,

    @field:JsonProperty("offline") val offline: kotlin.Boolean? = null,

    @field:JsonProperty("offlineCause") val offlineCause: kotlin.String? = null,

    @field:JsonProperty("offlineCauseReason") val offlineCauseReason: kotlin.String? = null,

    @field:JsonProperty("temporarilyOffline") val temporarilyOffline: kotlin.Boolean? = null
) {

}

