@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class PipelineStepImpl(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("_links")
    val links: PipelineStepImpllinks? = null,

    @field:JsonProperty("displayName")
    val displayName: kotlin.String? = null,

    @field:JsonProperty("durationInMillis")
    val durationInMillis: kotlin.Int? = null,

    @field:JsonProperty("id")
    val id: kotlin.String? = null,

    @field:JsonProperty("input")
    val input: InputStepImpl? = null,

    @field:JsonProperty("result")
    val result: kotlin.String? = null,

    @field:JsonProperty("startTime")
    val startTime: kotlin.String? = null,

    @field:JsonProperty("state")
    val state: kotlin.String? = null,

)
