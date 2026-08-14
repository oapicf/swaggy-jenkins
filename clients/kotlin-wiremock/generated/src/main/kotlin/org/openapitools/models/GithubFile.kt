@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class GithubFile(
    @field:JsonProperty("content")
    val content: GithubContent? = null,

    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

)
