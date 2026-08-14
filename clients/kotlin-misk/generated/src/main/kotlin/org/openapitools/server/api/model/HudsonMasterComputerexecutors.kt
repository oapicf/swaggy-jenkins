package org.openapitools.server.api.model

import org.openapitools.server.api.model.FreeStyleBuild
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class HudsonMasterComputerexecutors(
    val currentExecutable: FreeStyleBuild? = null,
    val idle: kotlin.Boolean? = null,
    val likelyStuck: kotlin.Boolean? = null,
    val number: kotlin.Int? = null,
    val progress: kotlin.Int? = null,
    val propertyClass: kotlin.String? = null
)
