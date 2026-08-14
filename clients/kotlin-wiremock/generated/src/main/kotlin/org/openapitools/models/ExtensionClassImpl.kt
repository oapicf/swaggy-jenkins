@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class ExtensionClassImpl(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("_links")
    val links: ExtensionClassImpllinks? = null,

    @field:JsonProperty("classes")
    val classes: kotlin.collections.List<kotlin.String>? = null,

)
