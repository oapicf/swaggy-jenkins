@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class GenericResource(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("displayName")
    val displayName: kotlin.String? = null,

    @field:JsonProperty("durationInMillis")
    val durationInMillis: kotlin.Int? = null,

    @field:JsonProperty("id")
    val id: kotlin.String? = null,

    @field:JsonProperty("result")
    val result: kotlin.String? = null,

    @field:JsonProperty("startTime")
    val startTime: kotlin.String? = null,

)
