package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class GithubContent(
    val name: kotlin.String? = null,
    val sha: kotlin.String? = null,
    val propertyClass: kotlin.String? = null,
    val repo: kotlin.String? = null,
    val propertySize: kotlin.Int? = null,
    val owner: kotlin.String? = null,
    val path: kotlin.String? = null,
    val base64Data: kotlin.String? = null
)
