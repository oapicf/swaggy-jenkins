package org.openapitools.server.api.model

import org.openapitools.server.api.model.FreeStyleProject
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class ListView(
    val propertyClass: kotlin.String? = null,
    val description: kotlin.String? = null,
    val jobs: kotlin.collections.List<FreeStyleProject>? = null,
    val name: kotlin.String? = null,
    val url: kotlin.String? = null
)
