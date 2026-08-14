@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class GithubRepositories(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("_links")
    val links: GithubRepositorieslinks? = null,

    @field:JsonProperty("items")
    val items: kotlin.collections.List<GithubRepository>? = null,

    @field:JsonProperty("lastPage")
    val lastPage: kotlin.Int? = null,

    @field:JsonProperty("nextPage")
    val nextPage: kotlin.Int? = null,

    @field:JsonProperty("pageSize")
    val pageSize: kotlin.Int? = null,

)
