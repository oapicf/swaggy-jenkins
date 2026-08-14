@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class SwapSpaceMonitorMemoryUsage2(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("availablePhysicalMemory")
    val availablePhysicalMemory: kotlin.Int? = null,

    @field:JsonProperty("availableSwapSpace")
    val availableSwapSpace: kotlin.Int? = null,

    @field:JsonProperty("totalPhysicalMemory")
    val totalPhysicalMemory: kotlin.Int? = null,

    @field:JsonProperty("totalSwapSpace")
    val totalSwapSpace: kotlin.Int? = null,

)
