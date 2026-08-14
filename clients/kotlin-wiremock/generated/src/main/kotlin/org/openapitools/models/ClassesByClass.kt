@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class ClassesByClass(
    @field:JsonProperty("classes")
    val classes: kotlin.collections.List<kotlin.String>? = null,

    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

)
