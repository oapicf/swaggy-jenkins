@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class BranchImpllinks(
    @field:JsonProperty("self")
    val self: Link? = null,

    @field:JsonProperty("actions")
    val actions: Link? = null,

    @field:JsonProperty("runs")
    val runs: Link? = null,

    @field:JsonProperty("queue")
    val queue: Link? = null,

    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

)
