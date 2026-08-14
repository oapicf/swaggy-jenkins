package org.openapitools.server.api.model

import org.openapitools.server.api.model.QueueBlockedItem
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class Queue(
    val propertyClass: kotlin.String? = null,
    val items: kotlin.collections.List<QueueBlockedItem>? = null
)
