@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class PipelineStepImpllinks(
    @field:JsonProperty("self")
    val self: Link? = null,

    @field:JsonProperty("actions")
    val actions: Link? = null,

    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

)
