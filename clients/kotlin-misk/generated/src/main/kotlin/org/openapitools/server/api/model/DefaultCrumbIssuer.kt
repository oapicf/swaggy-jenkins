package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class DefaultCrumbIssuer(
    val propertyClass: kotlin.String? = null,
    val crumb: kotlin.String? = null,
    val crumbRequestField: kotlin.String? = null
)
