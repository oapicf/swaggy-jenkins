@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class PipelineActivity(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("artifacts")
    val artifacts: kotlin.collections.List<PipelineActivityartifacts>? = null,

    @field:JsonProperty("durationInMillis")
    val durationInMillis: kotlin.Int? = null,

    @field:JsonProperty("estimatedDurationInMillis")
    val estimatedDurationInMillis: kotlin.Int? = null,

    @field:JsonProperty("enQueueTime")
    val enQueueTime: kotlin.String? = null,

    @field:JsonProperty("endTime")
    val endTime: kotlin.String? = null,

    @field:JsonProperty("id")
    val id: kotlin.String? = null,

    @field:JsonProperty("organization")
    val organization: kotlin.String? = null,

    @field:JsonProperty("pipeline")
    val pipeline: kotlin.String? = null,

    @field:JsonProperty("result")
    val result: kotlin.String? = null,

    @field:JsonProperty("runSummary")
    val runSummary: kotlin.String? = null,

    @field:JsonProperty("startTime")
    val startTime: kotlin.String? = null,

    @field:JsonProperty("state")
    val state: kotlin.String? = null,

    @field:JsonProperty("type")
    val type: kotlin.String? = null,

    @field:JsonProperty("commitId")
    val commitId: kotlin.String? = null,

)
