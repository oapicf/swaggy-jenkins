@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class HudsonMasterComputer(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("displayName")
    val displayName: kotlin.String? = null,

    @field:JsonProperty("executors")
    val executors: kotlin.collections.List<HudsonMasterComputerexecutors>? = null,

    @field:JsonProperty("icon")
    val icon: kotlin.String? = null,

    @field:JsonProperty("iconClassName")
    val iconClassName: kotlin.String? = null,

    @field:JsonProperty("idle")
    val idle: kotlin.Boolean? = null,

    @field:JsonProperty("jnlpAgent")
    val jnlpAgent: kotlin.Boolean? = null,

    @field:JsonProperty("launchSupported")
    val launchSupported: kotlin.Boolean? = null,

    @field:JsonProperty("loadStatistics")
    val loadStatistics: Label1? = null,

    @field:JsonProperty("manualLaunchAllowed")
    val manualLaunchAllowed: kotlin.Boolean? = null,

    @field:JsonProperty("monitorData")
    val monitorData: HudsonMasterComputermonitorData? = null,

    @field:JsonProperty("numExecutors")
    val numExecutors: kotlin.Int? = null,

    @field:JsonProperty("offline")
    val offline: kotlin.Boolean? = null,

    @field:JsonProperty("offlineCause")
    val offlineCause: kotlin.String? = null,

    @field:JsonProperty("offlineCauseReason")
    val offlineCauseReason: kotlin.String? = null,

    @field:JsonProperty("temporarilyOffline")
    val temporarilyOffline: kotlin.Boolean? = null,

)
