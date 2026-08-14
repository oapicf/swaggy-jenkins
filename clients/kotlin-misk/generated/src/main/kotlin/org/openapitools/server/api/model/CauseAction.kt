package org.openapitools.server.api.model

import org.openapitools.server.api.model.CauseUserIdCause
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class CauseAction(
    val propertyClass: kotlin.String? = null,
    val causes: kotlin.collections.List<CauseUserIdCause>? = null
)
