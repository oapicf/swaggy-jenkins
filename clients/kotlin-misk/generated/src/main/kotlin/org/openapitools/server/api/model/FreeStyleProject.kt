package org.openapitools.server.api.model

import org.openapitools.server.api.model.FreeStyleBuild
import org.openapitools.server.api.model.FreeStyleProjectactions
import org.openapitools.server.api.model.FreeStyleProjecthealthReport
import org.openapitools.server.api.model.NullSCM
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class FreeStyleProject(
    val propertyClass: kotlin.String? = null,
    val name: kotlin.String? = null,
    val url: kotlin.String? = null,
    val color: kotlin.String? = null,
    val actions: kotlin.collections.List<FreeStyleProjectactions>? = null,
    val description: kotlin.String? = null,
    val displayName: kotlin.String? = null,
    val displayNameOrNull: kotlin.String? = null,
    val fullDisplayName: kotlin.String? = null,
    val fullName: kotlin.String? = null,
    val buildable: kotlin.Boolean? = null,
    val builds: kotlin.collections.List<FreeStyleBuild>? = null,
    val firstBuild: FreeStyleBuild? = null,
    val healthReport: kotlin.collections.List<FreeStyleProjecthealthReport>? = null,
    val inQueue: kotlin.Boolean? = null,
    val keepDependencies: kotlin.Boolean? = null,
    val lastBuild: FreeStyleBuild? = null,
    val lastCompletedBuild: FreeStyleBuild? = null,
    val lastFailedBuild: kotlin.String? = null,
    val lastStableBuild: FreeStyleBuild? = null,
    val lastSuccessfulBuild: FreeStyleBuild? = null,
    val lastUnstableBuild: kotlin.String? = null,
    val lastUnsuccessfulBuild: kotlin.String? = null,
    val nextBuildNumber: kotlin.Int? = null,
    val queueItem: kotlin.String? = null,
    val concurrentBuild: kotlin.Boolean? = null,
    val scm: NullSCM? = null
)
