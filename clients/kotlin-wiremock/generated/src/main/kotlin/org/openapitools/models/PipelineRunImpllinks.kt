@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class PipelineRunImpllinks(
    @field:JsonProperty("nodes")
    val nodes: Link? = null,

    @field:JsonProperty("log")
    val log: Link? = null,

    @field:JsonProperty("self")
    val self: Link? = null,

    @field:JsonProperty("actions")
    val actions: Link? = null,

    @field:JsonProperty("steps")
    val steps: Link? = null,

    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

)
