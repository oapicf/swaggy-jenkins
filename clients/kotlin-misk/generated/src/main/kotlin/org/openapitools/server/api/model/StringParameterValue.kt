package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class StringParameterValue(
    val propertyClass: kotlin.String? = null,
    val name: kotlin.String? = null,
    val `value`: kotlin.String? = null
)
