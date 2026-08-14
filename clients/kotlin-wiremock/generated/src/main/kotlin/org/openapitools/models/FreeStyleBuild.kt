@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class FreeStyleBuild(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("number")
    val number: kotlin.Int? = null,

    @field:JsonProperty("url")
    val url: kotlin.String? = null,

    @field:JsonProperty("actions")
    val actions: kotlin.collections.List<CauseAction>? = null,

    @field:JsonProperty("building")
    val building: kotlin.Boolean? = null,

    @field:JsonProperty("description")
    val description: kotlin.String? = null,

    @field:JsonProperty("displayName")
    val displayName: kotlin.String? = null,

    @field:JsonProperty("duration")
    val duration: kotlin.Int? = null,

    @field:JsonProperty("estimatedDuration")
    val estimatedDuration: kotlin.Int? = null,

    @field:JsonProperty("executor")
    val executor: kotlin.String? = null,

    @field:JsonProperty("fullDisplayName")
    val fullDisplayName: kotlin.String? = null,

    @field:JsonProperty("id")
    val id: kotlin.String? = null,

    @field:JsonProperty("keepLog")
    val keepLog: kotlin.Boolean? = null,

    @field:JsonProperty("queueId")
    val queueId: kotlin.Int? = null,

    @field:JsonProperty("result")
    val result: kotlin.String? = null,

    @field:JsonProperty("timestamp")
    val timestamp: kotlin.Int? = null,

    @field:JsonProperty("builtOn")
    val builtOn: kotlin.String? = null,

    @field:JsonProperty("changeSet")
    val changeSet: EmptyChangeLogSet? = null,

)
