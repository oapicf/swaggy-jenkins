@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class FavoriteImpl(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("_links")
    val links: FavoriteImpllinks? = null,

    @field:JsonProperty("item")
    val item: PipelineImpl? = null,

)
