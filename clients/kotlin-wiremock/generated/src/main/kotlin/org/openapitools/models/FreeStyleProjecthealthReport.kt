@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class FreeStyleProjecthealthReport(
    @field:JsonProperty("description")
    val description: kotlin.String? = null,

    @field:JsonProperty("iconClassName")
    val iconClassName: kotlin.String? = null,

    @field:JsonProperty("iconUrl")
    val iconUrl: kotlin.String? = null,

    @field:JsonProperty("score")
    val score: kotlin.Int? = null,

    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

)
