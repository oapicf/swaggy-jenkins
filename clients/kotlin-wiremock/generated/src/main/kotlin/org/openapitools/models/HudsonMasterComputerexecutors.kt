@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class HudsonMasterComputerexecutors(
    @field:JsonProperty("currentExecutable")
    val currentExecutable: FreeStyleBuild? = null,

    @field:JsonProperty("idle")
    val idle: kotlin.Boolean? = null,

    @field:JsonProperty("likelyStuck")
    val likelyStuck: kotlin.Boolean? = null,

    @field:JsonProperty("number")
    val number: kotlin.Int? = null,

    @field:JsonProperty("progress")
    val progress: kotlin.Int? = null,

    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

)
