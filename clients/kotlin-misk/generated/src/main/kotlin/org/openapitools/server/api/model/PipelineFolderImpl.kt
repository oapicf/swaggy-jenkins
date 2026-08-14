package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class PipelineFolderImpl(
    val propertyClass: kotlin.String? = null,
    val displayName: kotlin.String? = null,
    val fullName: kotlin.String? = null,
    val name: kotlin.String? = null,
    val organization: kotlin.String? = null,
    val numberOfFolders: kotlin.Int? = null,
    val numberOfPipelines: kotlin.Int? = null
)
