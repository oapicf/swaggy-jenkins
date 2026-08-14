package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class EmptyChangeLogSet(
    val propertyClass: kotlin.String? = null,
    val kind: kotlin.String? = null
)
