@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class User(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("id")
    val id: kotlin.String? = null,

    @field:JsonProperty("fullName")
    val fullName: kotlin.String? = null,

    @field:JsonProperty("email")
    val email: kotlin.String? = null,

    @field:JsonProperty("name")
    val name: kotlin.String? = null,

)
