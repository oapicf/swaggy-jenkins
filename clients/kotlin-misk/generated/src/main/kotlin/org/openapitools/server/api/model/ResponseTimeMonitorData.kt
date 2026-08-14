package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class ResponseTimeMonitorData(
    val propertyClass: kotlin.String? = null,
    val timestamp: kotlin.Int? = null,
    val average: kotlin.Int? = null
)
