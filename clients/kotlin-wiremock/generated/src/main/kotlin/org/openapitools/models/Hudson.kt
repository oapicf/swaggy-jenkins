@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class Hudson(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("assignedLabels")
    val assignedLabels: kotlin.collections.List<HudsonassignedLabels>? = null,

    @field:JsonProperty("mode")
    val mode: kotlin.String? = null,

    @field:JsonProperty("nodeDescription")
    val nodeDescription: kotlin.String? = null,

    @field:JsonProperty("nodeName")
    val nodeName: kotlin.String? = null,

    @field:JsonProperty("numExecutors")
    val numExecutors: kotlin.Int? = null,

    @field:JsonProperty("description")
    val description: kotlin.String? = null,

    @field:JsonProperty("jobs")
    val jobs: kotlin.collections.List<FreeStyleProject>? = null,

    @field:JsonProperty("primaryView")
    val primaryView: AllView? = null,

    @field:JsonProperty("quietingDown")
    val quietingDown: kotlin.Boolean? = null,

    @field:JsonProperty("slaveAgentPort")
    val slaveAgentPort: kotlin.Int? = null,

    @field:JsonProperty("unlabeledLoad")
    val unlabeledLoad: UnlabeledLoadStatistics? = null,

    @field:JsonProperty("useCrumbs")
    val useCrumbs: kotlin.Boolean? = null,

    @field:JsonProperty("useSecurity")
    val useSecurity: kotlin.Boolean? = null,

    @field:JsonProperty("views")
    val views: kotlin.collections.List<AllView>? = null,

)
