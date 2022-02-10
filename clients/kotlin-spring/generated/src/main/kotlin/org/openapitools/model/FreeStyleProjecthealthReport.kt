package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size
import javax.validation.Valid

/**
 * 
 * @param description 
 * @param iconClassName 
 * @param iconUrl 
 * @param score 
 * @param propertyClass 
 */
data class FreeStyleProjecthealthReport(

    @field:JsonProperty("description") val description: kotlin.String? = null,

    @field:JsonProperty("iconClassName") val iconClassName: kotlin.String? = null,

    @field:JsonProperty("iconUrl") val iconUrl: kotlin.String? = null,

    @field:JsonProperty("score") val score: kotlin.Int? = null,

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null
) {

}

