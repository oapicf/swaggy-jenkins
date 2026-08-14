package org.openapitools.server.api.model

import org.openapitools.server.api.model.InputStepImpllinks
import org.openapitools.server.api.model.StringParameterDefinition
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class InputStepImpl(
    val propertyClass: kotlin.String? = null,
    val links: InputStepImpllinks? = null,
    val id: kotlin.String? = null,
    val message: kotlin.String? = null,
    val ok: kotlin.String? = null,
    val parameters: kotlin.collections.List<StringParameterDefinition>? = null,
    val submitter: kotlin.String? = null
)
