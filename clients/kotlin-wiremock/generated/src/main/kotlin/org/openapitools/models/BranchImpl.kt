@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class BranchImpl(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("displayName")
    val displayName: kotlin.String? = null,

    @field:JsonProperty("estimatedDurationInMillis")
    val estimatedDurationInMillis: kotlin.Int? = null,

    @field:JsonProperty("fullDisplayName")
    val fullDisplayName: kotlin.String? = null,

    @field:JsonProperty("fullName")
    val fullName: kotlin.String? = null,

    @field:JsonProperty("name")
    val name: kotlin.String? = null,

    @field:JsonProperty("organization")
    val organization: kotlin.String? = null,

    @field:JsonProperty("parameters")
    val parameters: kotlin.collections.List<StringParameterDefinition>? = null,

    @field:JsonProperty("permissions")
    val permissions: BranchImplpermissions? = null,

    @field:JsonProperty("weatherScore")
    val weatherScore: kotlin.Int? = null,

    @field:JsonProperty("pullRequest")
    val pullRequest: kotlin.String? = null,

    @field:JsonProperty("_links")
    val links: BranchImpllinks? = null,

    @field:JsonProperty("latestRun")
    val latestRun: PipelineRunImpl? = null,

)
