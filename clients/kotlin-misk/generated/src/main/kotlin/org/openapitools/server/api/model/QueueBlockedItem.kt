package org.openapitools.server.api.model

import org.openapitools.server.api.model.CauseAction
import org.openapitools.server.api.model.FreeStyleProject
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class QueueBlockedItem(
    val propertyClass: kotlin.String? = null,
    val actions: kotlin.collections.List<CauseAction>? = null,
    val blocked: kotlin.Boolean? = null,
    val buildable: kotlin.Boolean? = null,
    val id: kotlin.Int? = null,
    val inQueueSince: kotlin.Int? = null,
    val params: kotlin.String? = null,
    val stuck: kotlin.Boolean? = null,
    val task: FreeStyleProject? = null,
    val url: kotlin.String? = null,
    val why: kotlin.String? = null,
    val buildableStartMilliseconds: kotlin.Int? = null
)
