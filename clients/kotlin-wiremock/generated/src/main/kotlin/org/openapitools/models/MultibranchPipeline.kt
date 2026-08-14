@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class MultibranchPipeline(
    @field:JsonProperty("displayName")
    val displayName: kotlin.String? = null,

    @field:JsonProperty("estimatedDurationInMillis")
    val estimatedDurationInMillis: kotlin.Int? = null,

    @field:JsonProperty("latestRun")
    val latestRun: kotlin.String? = null,

    @field:JsonProperty("name")
    val name: kotlin.String? = null,

    @field:JsonProperty("organization")
    val organization: kotlin.String? = null,

    @field:JsonProperty("weatherScore")
    val weatherScore: kotlin.Int? = null,

    @field:JsonProperty("branchNames")
    val branchNames: kotlin.collections.List<kotlin.String>? = null,

    @field:JsonProperty("numberOfFailingBranches")
    val numberOfFailingBranches: kotlin.Int? = null,

    @field:JsonProperty("numberOfFailingPullRequests")
    val numberOfFailingPullRequests: kotlin.Int? = null,

    @field:JsonProperty("numberOfSuccessfulBranches")
    val numberOfSuccessfulBranches: kotlin.Int? = null,

    @field:JsonProperty("numberOfSuccessfulPullRequests")
    val numberOfSuccessfulPullRequests: kotlin.Int? = null,

    @field:JsonProperty("totalNumberOfBranches")
    val totalNumberOfBranches: kotlin.Int? = null,

    @field:JsonProperty("totalNumberOfPullRequests")
    val totalNumberOfPullRequests: kotlin.Int? = null,

    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

)
