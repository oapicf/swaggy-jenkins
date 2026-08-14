@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class ComputerSet(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("busyExecutors")
    val busyExecutors: kotlin.Int? = null,

    @field:JsonProperty("computer")
    val computer: kotlin.collections.List<HudsonMasterComputer>? = null,

    @field:JsonProperty("displayName")
    val displayName: kotlin.String? = null,

    @field:JsonProperty("totalExecutors")
    val totalExecutors: kotlin.Int? = null,

)
