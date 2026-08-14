package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class UnlabeledLoadStatistics(
    val propertyClass: kotlin.String? = null
)
