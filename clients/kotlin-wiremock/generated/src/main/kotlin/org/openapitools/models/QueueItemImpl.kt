@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class QueueItemImpl(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("expectedBuildNumber")
    val expectedBuildNumber: kotlin.Int? = null,

    @field:JsonProperty("id")
    val id: kotlin.String? = null,

    @field:JsonProperty("pipeline")
    val pipeline: kotlin.String? = null,

    @field:JsonProperty("queuedTime")
    val queuedTime: kotlin.Int? = null,

)
