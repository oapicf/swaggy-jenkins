package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class NullSCM(
    val propertyClass: kotlin.String? = null
)
