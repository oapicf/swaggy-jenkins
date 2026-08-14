@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class BranchImplpermissions(
    @field:JsonProperty("create")
    val create: kotlin.Boolean? = null,

    @field:JsonProperty("read")
    val read: kotlin.Boolean? = null,

    @field:JsonProperty("start")
    val start: kotlin.Boolean? = null,

    @field:JsonProperty("stop")
    val stop: kotlin.Boolean? = null,

    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

)
