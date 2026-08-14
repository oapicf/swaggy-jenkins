package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class CauseUserIdCause(
    val propertyClass: kotlin.String? = null,
    val shortDescription: kotlin.String? = null,
    val userId: kotlin.String? = null,
    val userName: kotlin.String? = null
)
