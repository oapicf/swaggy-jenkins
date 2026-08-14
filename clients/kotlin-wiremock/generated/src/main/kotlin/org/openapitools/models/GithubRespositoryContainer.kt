@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class GithubRespositoryContainer(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("_links")
    val links: GithubRespositoryContainerlinks? = null,

    @field:JsonProperty("repositories")
    val repositories: GithubRepositories? = null,

)
