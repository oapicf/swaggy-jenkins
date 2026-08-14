package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class FreeStyleProjecthealthReport(
    val description: kotlin.String? = null,
    val iconClassName: kotlin.String? = null,
    val iconUrl: kotlin.String? = null,
    val score: kotlin.Int? = null,
    val propertyClass: kotlin.String? = null
)
