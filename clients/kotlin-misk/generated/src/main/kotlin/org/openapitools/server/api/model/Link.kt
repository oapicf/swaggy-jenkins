package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class Link(
    val propertyClass: kotlin.String? = null,
    val href: kotlin.String? = null
)
