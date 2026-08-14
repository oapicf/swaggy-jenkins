package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class PipelinelatestRunartifacts(
    val name: kotlin.String? = null,
    val propertySize: kotlin.Int? = null,
    val url: kotlin.String? = null,
    val propertyClass: kotlin.String? = null
)
