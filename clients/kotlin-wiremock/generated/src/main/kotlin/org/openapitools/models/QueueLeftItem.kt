@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class QueueLeftItem(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("actions")
    val actions: kotlin.collections.List<CauseAction>? = null,

    @field:JsonProperty("blocked")
    val blocked: kotlin.Boolean? = null,

    @field:JsonProperty("buildable")
    val buildable: kotlin.Boolean? = null,

    @field:JsonProperty("id")
    val id: kotlin.Int? = null,

    @field:JsonProperty("inQueueSince")
    val inQueueSince: kotlin.Int? = null,

    @field:JsonProperty("params")
    val params: kotlin.String? = null,

    @field:JsonProperty("stuck")
    val stuck: kotlin.Boolean? = null,

    @field:JsonProperty("task")
    val task: FreeStyleProject? = null,

    @field:JsonProperty("url")
    val url: kotlin.String? = null,

    @field:JsonProperty("why")
    val why: kotlin.String? = null,

    @field:JsonProperty("cancelled")
    val cancelled: kotlin.Boolean? = null,

    @field:JsonProperty("executable")
    val executable: FreeStyleBuild? = null,

)
