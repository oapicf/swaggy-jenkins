package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class User(
    val propertyClass: kotlin.String? = null,
    val id: kotlin.String? = null,
    val fullName: kotlin.String? = null,
    val email: kotlin.String? = null,
    val name: kotlin.String? = null
)
