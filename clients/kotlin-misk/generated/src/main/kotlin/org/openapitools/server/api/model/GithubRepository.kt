package org.openapitools.server.api.model

import org.openapitools.server.api.model.GithubRepositorylinks
import org.openapitools.server.api.model.GithubRepositorypermissions
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class GithubRepository(
    val propertyClass: kotlin.String? = null,
    val links: GithubRepositorylinks? = null,
    val defaultBranch: kotlin.String? = null,
    val description: kotlin.String? = null,
    val name: kotlin.String? = null,
    val permissions: GithubRepositorypermissions? = null,
    val `private`: kotlin.Boolean? = null,
    val fullName: kotlin.String? = null
)
