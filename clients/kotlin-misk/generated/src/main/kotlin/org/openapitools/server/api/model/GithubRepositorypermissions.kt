package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class GithubRepositorypermissions(
    val admin: kotlin.Boolean? = null,
    val push: kotlin.Boolean? = null,
    val pull: kotlin.Boolean? = null,
    val propertyClass: kotlin.String? = null
)
