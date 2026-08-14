package org.openapitools.server.api.model

import org.openapitools.server.api.model.GithubScmlinks
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class GithubScm(
    val propertyClass: kotlin.String? = null,
    val links: GithubScmlinks? = null,
    val credentialId: kotlin.String? = null,
    val id: kotlin.String? = null,
    val uri: kotlin.String? = null
)
