package org.openapitools.server.api.model

import org.openapitools.server.api.model.GithubContent
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class GithubFile(
    val content: GithubContent? = null,
    val propertyClass: kotlin.String? = null
)
