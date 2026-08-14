package org.openapitools.server.api.model

import org.openapitools.server.api.model.PipelineBranchesitemlatestRun
import org.openapitools.server.api.model.PipelineBranchesitempullRequest
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class PipelineBranchesitem(
    val displayName: kotlin.String? = null,
    val estimatedDurationInMillis: kotlin.Int? = null,
    val name: kotlin.String? = null,
    val weatherScore: kotlin.Int? = null,
    val latestRun: PipelineBranchesitemlatestRun? = null,
    val organization: kotlin.String? = null,
    val pullRequest: PipelineBranchesitempullRequest? = null,
    val totalNumberOfPullRequests: kotlin.Int? = null,
    val propertyClass: kotlin.String? = null
)
