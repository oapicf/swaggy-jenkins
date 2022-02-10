package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.GithubContent
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
 * @param content 
 * @param propertyClass 
 */
data class GithubFile(

    @field:Valid
    @field:JsonProperty("content") val content: GithubContent? = null,

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null
) {

}

