@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class ExtensionClassContainerImpl1(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("_links")
    val links: ExtensionClassContainerImpl1links? = null,

    @field:JsonProperty("map")
    val map: ExtensionClassContainerImpl1map? = null,

)
