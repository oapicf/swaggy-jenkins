package org.openapitools.server.api.model

import org.openapitools.server.api.model.PipelineImpllinks
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class PipelineImpl(
    val propertyClass: kotlin.String? = null,
    val displayName: kotlin.String? = null,
    val estimatedDurationInMillis: kotlin.Int? = null,
    val fullName: kotlin.String? = null,
    val latestRun: kotlin.String? = null,
    val name: kotlin.String? = null,
    val organization: kotlin.String? = null,
    val weatherScore: kotlin.Int? = null,
    val links: PipelineImpllinks? = null
)
