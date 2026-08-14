package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class QueueItemImpl(
    val propertyClass: kotlin.String? = null,
    val expectedBuildNumber: kotlin.Int? = null,
    val id: kotlin.String? = null,
    val pipeline: kotlin.String? = null,
    val queuedTime: kotlin.Int? = null
)
