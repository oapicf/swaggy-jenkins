package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class MultibranchPipeline(
    val displayName: kotlin.String? = null,
    val estimatedDurationInMillis: kotlin.Int? = null,
    val latestRun: kotlin.String? = null,
    val name: kotlin.String? = null,
    val organization: kotlin.String? = null,
    val weatherScore: kotlin.Int? = null,
    val branchNames: kotlin.collections.List<kotlin.String>? = null,
    val numberOfFailingBranches: kotlin.Int? = null,
    val numberOfFailingPullRequests: kotlin.Int? = null,
    val numberOfSuccessfulBranches: kotlin.Int? = null,
    val numberOfSuccessfulPullRequests: kotlin.Int? = null,
    val totalNumberOfBranches: kotlin.Int? = null,
    val totalNumberOfPullRequests: kotlin.Int? = null,
    val propertyClass: kotlin.String? = null
)
