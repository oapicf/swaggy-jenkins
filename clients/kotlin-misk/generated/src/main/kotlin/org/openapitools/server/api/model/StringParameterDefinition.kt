package org.openapitools.server.api.model

import org.openapitools.server.api.model.StringParameterValue
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class StringParameterDefinition(
    val propertyClass: kotlin.String? = null,
    val defaultParameterValue: StringParameterValue? = null,
    val description: kotlin.String? = null,
    val name: kotlin.String? = null,
    val type: kotlin.String? = null
)
