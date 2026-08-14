package org.openapitools.server.api.model

import org.openapitools.server.api.model.CauseAction
import org.openapitools.server.api.model.EmptyChangeLogSet
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class FreeStyleBuild(
    val propertyClass: kotlin.String? = null,
    val number: kotlin.Int? = null,
    val url: kotlin.String? = null,
    val actions: kotlin.collections.List<CauseAction>? = null,
    val building: kotlin.Boolean? = null,
    val description: kotlin.String? = null,
    val displayName: kotlin.String? = null,
    val duration: kotlin.Int? = null,
    val estimatedDuration: kotlin.Int? = null,
    val executor: kotlin.String? = null,
    val fullDisplayName: kotlin.String? = null,
    val id: kotlin.String? = null,
    val keepLog: kotlin.Boolean? = null,
    val queueId: kotlin.Int? = null,
    val result: kotlin.String? = null,
    val timestamp: kotlin.Int? = null,
    val builtOn: kotlin.String? = null,
    val changeSet: EmptyChangeLogSet? = null
)
