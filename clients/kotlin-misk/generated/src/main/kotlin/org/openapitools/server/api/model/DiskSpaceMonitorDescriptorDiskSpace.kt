package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class DiskSpaceMonitorDescriptorDiskSpace(
    val propertyClass: kotlin.String? = null,
    val timestamp: kotlin.Int? = null,
    val path: kotlin.String? = null,
    val propertySize: kotlin.Int? = null
)
