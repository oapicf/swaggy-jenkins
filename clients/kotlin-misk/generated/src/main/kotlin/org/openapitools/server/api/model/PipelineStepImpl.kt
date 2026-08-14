package org.openapitools.server.api.model

import org.openapitools.server.api.model.InputStepImpl
import org.openapitools.server.api.model.PipelineStepImpllinks
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class PipelineStepImpl(
    val propertyClass: kotlin.String? = null,
    val links: PipelineStepImpllinks? = null,
    val displayName: kotlin.String? = null,
    val durationInMillis: kotlin.Int? = null,
    val id: kotlin.String? = null,
    val input: InputStepImpl? = null,
    val result: kotlin.String? = null,
    val startTime: kotlin.String? = null,
    val state: kotlin.String? = null
)
