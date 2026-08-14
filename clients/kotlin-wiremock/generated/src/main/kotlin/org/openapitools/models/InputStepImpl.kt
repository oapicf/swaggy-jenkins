@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class InputStepImpl(
    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

    @field:JsonProperty("_links")
    val links: InputStepImpllinks? = null,

    @field:JsonProperty("id")
    val id: kotlin.String? = null,

    @field:JsonProperty("message")
    val message: kotlin.String? = null,

    @field:JsonProperty("ok")
    val ok: kotlin.String? = null,

    @field:JsonProperty("parameters")
    val parameters: kotlin.collections.List<StringParameterDefinition>? = null,

    @field:JsonProperty("submitter")
    val submitter: kotlin.String? = null,

)
