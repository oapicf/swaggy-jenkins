package org.openapitools.server.api.model

import org.openapitools.server.api.model.HudsonMasterComputerexecutors
import org.openapitools.server.api.model.HudsonMasterComputermonitorData
import org.openapitools.server.api.model.Label1
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class HudsonMasterComputer(
    val propertyClass: kotlin.String? = null,
    val displayName: kotlin.String? = null,
    val executors: kotlin.collections.List<HudsonMasterComputerexecutors>? = null,
    val icon: kotlin.String? = null,
    val iconClassName: kotlin.String? = null,
    val idle: kotlin.Boolean? = null,
    val jnlpAgent: kotlin.Boolean? = null,
    val launchSupported: kotlin.Boolean? = null,
    val loadStatistics: Label1? = null,
    val manualLaunchAllowed: kotlin.Boolean? = null,
    val monitorData: HudsonMasterComputermonitorData? = null,
    val numExecutors: kotlin.Int? = null,
    val offline: kotlin.Boolean? = null,
    val offlineCause: kotlin.String? = null,
    val offlineCauseReason: kotlin.String? = null,
    val temporarilyOffline: kotlin.Boolean? = null
)
