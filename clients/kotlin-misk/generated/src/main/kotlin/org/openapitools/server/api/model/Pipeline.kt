package org.openapitools.server.api.model

import org.openapitools.server.api.model.PipelinelatestRun
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class Pipeline(
    val propertyClass: kotlin.String? = null,
    val organization: kotlin.String? = null,
    val name: kotlin.String? = null,
    val displayName: kotlin.String? = null,
    val fullName: kotlin.String? = null,
    val weatherScore: kotlin.Int? = null,
    val estimatedDurationInMillis: kotlin.Int? = null,
    val latestRun: PipelinelatestRun? = null
)
