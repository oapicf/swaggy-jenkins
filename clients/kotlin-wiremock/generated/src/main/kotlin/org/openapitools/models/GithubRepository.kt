@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class GithubRepository(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("_links")
    val links: GithubRepositorylinks? = null,

    @field:JsonProperty("defaultBranch")
    val defaultBranch: kotlin.String? = null,

    @field:JsonProperty("description")
    val description: kotlin.String? = null,

    @field:JsonProperty("name")
    val name: kotlin.String? = null,

    @field:JsonProperty("permissions")
    val permissions: GithubRepositorypermissions? = null,

    @field:JsonProperty("private")
    val `private`: kotlin.Boolean? = null,

    @field:JsonProperty("fullName")
    val fullName: kotlin.String? = null,

)
