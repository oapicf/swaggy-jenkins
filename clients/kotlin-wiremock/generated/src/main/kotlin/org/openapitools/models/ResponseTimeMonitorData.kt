@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class ResponseTimeMonitorData(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("timestamp")
    val timestamp: kotlin.Int? = null,

    @field:JsonProperty("average")
    val average: kotlin.Int? = null,

)
