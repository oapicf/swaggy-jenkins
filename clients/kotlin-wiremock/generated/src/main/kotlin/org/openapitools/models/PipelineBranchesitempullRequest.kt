@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class PipelineBranchesitempullRequest(
    @field:JsonProperty("_links")
    val links: PipelineBranchesitempullRequestlinks? = null,

    @field:JsonProperty("author")
    val author: kotlin.String? = null,

    @field:JsonProperty("id")
    val id: kotlin.String? = null,

    @field:JsonProperty("title")
    val title: kotlin.String? = null,

    @field:JsonProperty("url")
    val url: kotlin.String? = null,

    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

)
