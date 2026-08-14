package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class ClassesByClass(
    val classes: kotlin.collections.List<kotlin.String>? = null,
    val propertyClass: kotlin.String? = null
)
