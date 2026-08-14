@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class FreeStyleProject(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("name")
    val name: kotlin.String? = null,

    @field:JsonProperty("url")
    val url: kotlin.String? = null,

    @field:JsonProperty("color")
    val color: kotlin.String? = null,

    @field:JsonProperty("actions")
    val actions: kotlin.collections.List<FreeStyleProjectactions>? = null,

    @field:JsonProperty("description")
    val description: kotlin.String? = null,

    @field:JsonProperty("displayName")
    val displayName: kotlin.String? = null,

    @field:JsonProperty("displayNameOrNull")
    val displayNameOrNull: kotlin.String? = null,

    @field:JsonProperty("fullDisplayName")
    val fullDisplayName: kotlin.String? = null,

    @field:JsonProperty("fullName")
    val fullName: kotlin.String? = null,

    @field:JsonProperty("buildable")
    val buildable: kotlin.Boolean? = null,

    @field:JsonProperty("builds")
    val builds: kotlin.collections.List<FreeStyleBuild>? = null,

    @field:JsonProperty("firstBuild")
    val firstBuild: FreeStyleBuild? = null,

    @field:JsonProperty("healthReport")
    val healthReport: kotlin.collections.List<FreeStyleProjecthealthReport>? = null,

    @field:JsonProperty("inQueue")
    val inQueue: kotlin.Boolean? = null,

    @field:JsonProperty("keepDependencies")
    val keepDependencies: kotlin.Boolean? = null,

    @field:JsonProperty("lastBuild")
    val lastBuild: FreeStyleBuild? = null,

    @field:JsonProperty("lastCompletedBuild")
    val lastCompletedBuild: FreeStyleBuild? = null,

    @field:JsonProperty("lastFailedBuild")
    val lastFailedBuild: kotlin.String? = null,

    @field:JsonProperty("lastStableBuild")
    val lastStableBuild: FreeStyleBuild? = null,

    @field:JsonProperty("lastSuccessfulBuild")
    val lastSuccessfulBuild: FreeStyleBuild? = null,

    @field:JsonProperty("lastUnstableBuild")
    val lastUnstableBuild: kotlin.String? = null,

    @field:JsonProperty("lastUnsuccessfulBuild")
    val lastUnsuccessfulBuild: kotlin.String? = null,

    @field:JsonProperty("nextBuildNumber")
    val nextBuildNumber: kotlin.Int? = null,

    @field:JsonProperty("queueItem")
    val queueItem: kotlin.String? = null,

    @field:JsonProperty("concurrentBuild")
    val concurrentBuild: kotlin.Boolean? = null,

    @field:JsonProperty("scm")
    val scm: NullSCM? = null,

)
