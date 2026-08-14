package org.openapitools.server.api.model

import org.openapitools.server.api.model.GithubOrganizationlinks
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class GithubOrganization(
    val propertyClass: kotlin.String? = null,
    val links: GithubOrganizationlinks? = null,
    val jenkinsOrganizationPipeline: kotlin.Boolean? = null,
    val name: kotlin.String? = null
)
