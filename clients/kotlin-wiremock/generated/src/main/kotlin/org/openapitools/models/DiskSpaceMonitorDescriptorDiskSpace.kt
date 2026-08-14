@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class DiskSpaceMonitorDescriptorDiskSpace(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("timestamp")
    val timestamp: kotlin.Int? = null,

    @field:JsonProperty("path")
    val path: kotlin.String? = null,

    @field:JsonProperty("size")
    val propertySize: kotlin.Int? = null,

)
