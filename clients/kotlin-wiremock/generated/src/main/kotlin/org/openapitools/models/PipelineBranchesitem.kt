@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class PipelineBranchesitem(
    @field:JsonProperty("displayName")
    val displayName: kotlin.String? = null,

    @field:JsonProperty("estimatedDurationInMillis")
    val estimatedDurationInMillis: kotlin.Int? = null,

    @field:JsonProperty("name")
    val name: kotlin.String? = null,

    @field:JsonProperty("weatherScore")
    val weatherScore: kotlin.Int? = null,

    @field:JsonProperty("latestRun")
    val latestRun: PipelineBranchesitemlatestRun? = null,

    @field:JsonProperty("organization")
    val organization: kotlin.String? = null,

    @field:JsonProperty("pullRequest")
    val pullRequest: PipelineBranchesitempullRequest? = null,

    @field:JsonProperty("totalNumberOfPullRequests")
    val totalNumberOfPullRequests: kotlin.Int? = null,

    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

)
