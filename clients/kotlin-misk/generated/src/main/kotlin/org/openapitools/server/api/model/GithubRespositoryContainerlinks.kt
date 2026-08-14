package org.openapitools.server.api.model

import org.openapitools.server.api.model.Link
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class GithubRespositoryContainerlinks(
    val self: Link? = null,
    val propertyClass: kotlin.String? = null
)
