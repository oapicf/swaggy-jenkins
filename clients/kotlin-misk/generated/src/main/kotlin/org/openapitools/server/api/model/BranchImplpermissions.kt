package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class BranchImplpermissions(
    val create: kotlin.Boolean? = null,
    val read: kotlin.Boolean? = null,
    val start: kotlin.Boolean? = null,
    val stop: kotlin.Boolean? = null,
    val propertyClass: kotlin.String? = null
)
