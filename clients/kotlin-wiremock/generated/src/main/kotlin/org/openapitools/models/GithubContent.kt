@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class GithubContent(
    @field:JsonProperty("name")
    val name: kotlin.String? = null,

    @field:JsonProperty("sha")
    val sha: kotlin.String? = null,

    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("repo")
    val repo: kotlin.String? = null,

    @field:JsonProperty("size")
    val propertySize: kotlin.Int? = null,

    @field:JsonProperty("owner")
    val owner: kotlin.String? = null,

    @field:JsonProperty("path")
    val path: kotlin.String? = null,

    @field:JsonProperty("base64Data")
    val base64Data: kotlin.String? = null,

)
