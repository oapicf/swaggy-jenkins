package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class SwapSpaceMonitorMemoryUsage2(
    val propertyClass: kotlin.String? = null,
    val availablePhysicalMemory: kotlin.Int? = null,
    val availableSwapSpace: kotlin.Int? = null,
    val totalPhysicalMemory: kotlin.Int? = null,
    val totalSwapSpace: kotlin.Int? = null
)
