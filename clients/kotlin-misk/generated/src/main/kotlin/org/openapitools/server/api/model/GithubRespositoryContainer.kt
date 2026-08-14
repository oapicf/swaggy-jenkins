package org.openapitools.server.api.model

import org.openapitools.server.api.model.GithubRepositories
import org.openapitools.server.api.model.GithubRespositoryContainerlinks
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class GithubRespositoryContainer(
    val propertyClass: kotlin.String? = null,
    val links: GithubRespositoryContainerlinks? = null,
    val repositories: GithubRepositories? = null
)
