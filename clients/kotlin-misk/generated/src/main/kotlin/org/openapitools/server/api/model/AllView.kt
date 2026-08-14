package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class AllView(
    val propertyClass: kotlin.String? = null,
    val name: kotlin.String? = null,
    val url: kotlin.String? = null
)
