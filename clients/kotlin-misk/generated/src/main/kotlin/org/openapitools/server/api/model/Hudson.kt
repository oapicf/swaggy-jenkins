package org.openapitools.server.api.model

import org.openapitools.server.api.model.AllView
import org.openapitools.server.api.model.FreeStyleProject
import org.openapitools.server.api.model.HudsonassignedLabels
import org.openapitools.server.api.model.UnlabeledLoadStatistics
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class Hudson(
    val propertyClass: kotlin.String? = null,
    val assignedLabels: kotlin.collections.List<HudsonassignedLabels>? = null,
    val mode: kotlin.String? = null,
    val nodeDescription: kotlin.String? = null,
    val nodeName: kotlin.String? = null,
    val numExecutors: kotlin.Int? = null,
    val description: kotlin.String? = null,
    val jobs: kotlin.collections.List<FreeStyleProject>? = null,
    val primaryView: AllView? = null,
    val quietingDown: kotlin.Boolean? = null,
    val slaveAgentPort: kotlin.Int? = null,
    val unlabeledLoad: UnlabeledLoadStatistics? = null,
    val useCrumbs: kotlin.Boolean? = null,
    val useSecurity: kotlin.Boolean? = null,
    val views: kotlin.collections.List<AllView>? = null
)
