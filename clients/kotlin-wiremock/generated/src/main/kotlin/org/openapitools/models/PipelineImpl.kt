@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class PipelineImpl(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("displayName")
    val displayName: kotlin.String? = null,

    @field:JsonProperty("estimatedDurationInMillis")
    val estimatedDurationInMillis: kotlin.Int? = null,

    @field:JsonProperty("fullName")
    val fullName: kotlin.String? = null,

    @field:JsonProperty("latestRun")
    val latestRun: kotlin.String? = null,

    @field:JsonProperty("name")
    val name: kotlin.String? = null,

    @field:JsonProperty("organization")
    val organization: kotlin.String? = null,

    @field:JsonProperty("weatherScore")
    val weatherScore: kotlin.Int? = null,

    @field:JsonProperty("_links")
    val links: PipelineImpllinks? = null,

)
