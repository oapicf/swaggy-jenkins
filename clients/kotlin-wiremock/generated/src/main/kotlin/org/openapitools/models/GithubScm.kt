@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class GithubScm(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("_links")
    val links: GithubScmlinks? = null,

    @field:JsonProperty("credentialId")
    val credentialId: kotlin.String? = null,

    @field:JsonProperty("id")
    val id: kotlin.String? = null,

    @field:JsonProperty("uri")
    val uri: kotlin.String? = null,

)
