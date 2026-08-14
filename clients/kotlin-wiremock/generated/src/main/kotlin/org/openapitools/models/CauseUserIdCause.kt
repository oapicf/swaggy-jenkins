@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class CauseUserIdCause(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("shortDescription")
    val shortDescription: kotlin.String? = null,

    @field:JsonProperty("userId")
    val userId: kotlin.String? = null,

    @field:JsonProperty("userName")
    val userName: kotlin.String? = null,

)
