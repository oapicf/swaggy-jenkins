package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class GenericResource(
    val propertyClass: kotlin.String? = null,
    val displayName: kotlin.String? = null,
    val durationInMillis: kotlin.Int? = null,
    val id: kotlin.String? = null,
    val result: kotlin.String? = null,
    val startTime: kotlin.String? = null
)
