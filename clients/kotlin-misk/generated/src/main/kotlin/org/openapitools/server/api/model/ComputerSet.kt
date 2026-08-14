package org.openapitools.server.api.model

import org.openapitools.server.api.model.HudsonMasterComputer
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class ComputerSet(
    val propertyClass: kotlin.String? = null,
    val busyExecutors: kotlin.Int? = null,
    val computer: kotlin.collections.List<HudsonMasterComputer>? = null,
    val displayName: kotlin.String? = null,
    val totalExecutors: kotlin.Int? = null
)
