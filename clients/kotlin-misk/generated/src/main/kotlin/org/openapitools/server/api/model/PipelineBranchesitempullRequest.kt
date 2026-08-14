package org.openapitools.server.api.model

import org.openapitools.server.api.model.PipelineBranchesitempullRequestlinks
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class PipelineBranchesitempullRequest(
    val links: PipelineBranchesitempullRequestlinks? = null,
    val author: kotlin.String? = null,
    val id: kotlin.String? = null,
    val title: kotlin.String? = null,
    val url: kotlin.String? = null,
    val propertyClass: kotlin.String? = null
)
