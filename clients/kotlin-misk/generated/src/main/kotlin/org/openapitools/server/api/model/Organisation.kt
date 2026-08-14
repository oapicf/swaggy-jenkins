package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class Organisation(
    val propertyClass: kotlin.String? = null,
    val name: kotlin.String? = null
)
