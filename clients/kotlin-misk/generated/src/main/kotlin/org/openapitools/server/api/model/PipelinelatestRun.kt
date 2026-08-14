package org.openapitools.server.api.model

import org.openapitools.server.api.model.PipelinelatestRunartifacts
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class PipelinelatestRun(
    val artifacts: kotlin.collections.List<PipelinelatestRunartifacts>? = null,
    val durationInMillis: kotlin.Int? = null,
    val estimatedDurationInMillis: kotlin.Int? = null,
    val enQueueTime: kotlin.String? = null,
    val endTime: kotlin.String? = null,
    val id: kotlin.String? = null,
    val organization: kotlin.String? = null,
    val pipeline: kotlin.String? = null,
    val result: kotlin.String? = null,
    val runSummary: kotlin.String? = null,
    val startTime: kotlin.String? = null,
    val state: kotlin.String? = null,
    val type: kotlin.String? = null,
    val commitId: kotlin.String? = null,
    val propertyClass: kotlin.String? = null
)
