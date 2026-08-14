package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class ClockDifference(
    val propertyClass: kotlin.String? = null,
    val diff: kotlin.Int? = null
)
