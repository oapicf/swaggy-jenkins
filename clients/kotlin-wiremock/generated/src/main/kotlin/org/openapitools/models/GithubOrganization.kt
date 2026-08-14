@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class GithubOrganization(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("_links")
    val links: GithubOrganizationlinks? = null,

    @field:JsonProperty("jenkinsOrganizationPipeline")
    val jenkinsOrganizationPipeline: kotlin.Boolean? = null,

    @field:JsonProperty("name")
    val name: kotlin.String? = null,

)
