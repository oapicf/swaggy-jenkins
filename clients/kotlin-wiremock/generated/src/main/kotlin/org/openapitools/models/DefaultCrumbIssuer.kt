@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class DefaultCrumbIssuer(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("crumb")
    val crumb: kotlin.String? = null,

    @field:JsonProperty("crumbRequestField")
    val crumbRequestField: kotlin.String? = null,

)
