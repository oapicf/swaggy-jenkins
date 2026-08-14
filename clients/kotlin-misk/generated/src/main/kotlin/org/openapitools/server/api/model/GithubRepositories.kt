package org.openapitools.server.api.model

import org.openapitools.server.api.model.GithubRepositorieslinks
import org.openapitools.server.api.model.GithubRepository
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class GithubRepositories(
    val propertyClass: kotlin.String? = null,
    val links: GithubRepositorieslinks? = null,
    val items: kotlin.collections.List<GithubRepository>? = null,
    val lastPage: kotlin.Int? = null,
    val nextPage: kotlin.Int? = null,
    val pageSize: kotlin.Int? = null
)
