package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.FreeStyleProject
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
 * @param propertyClass 
 * @param description 
 * @param jobs 
 * @param name 
 * @param url 
 */
data class ListView(

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:JsonProperty("description") val description: kotlin.String? = null,

    @field:Valid
    @field:JsonProperty("jobs") val jobs: kotlin.collections.List<FreeStyleProject>? = null,

    @field:JsonProperty("name") val name: kotlin.String? = null,

    @field:JsonProperty("url") val url: kotlin.String? = null
) {

}

