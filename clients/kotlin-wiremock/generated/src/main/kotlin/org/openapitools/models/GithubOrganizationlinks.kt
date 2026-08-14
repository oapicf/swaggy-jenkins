@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class GithubOrganizationlinks(
    @field:JsonProperty("repositories")
    val repositories: Link? = null,

    @field:JsonProperty("self")
    val self: Link? = null,

    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

)
