@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class GithubRepositorypermissions(
    @field:JsonProperty("admin")
    val admin: kotlin.Boolean? = null,

    @field:JsonProperty("push")
    val push: kotlin.Boolean? = null,

    @field:JsonProperty("pull")
    val pull: kotlin.Boolean? = null,

    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

)
