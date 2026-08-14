package org.openapitools.server.api.model

import org.openapitools.server.api.model.FavoriteImpllinks
import org.openapitools.server.api.model.PipelineImpl
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class FavoriteImpl(
    val propertyClass: kotlin.String? = null,
    val links: FavoriteImpllinks? = null,
    val item: PipelineImpl? = null
)
