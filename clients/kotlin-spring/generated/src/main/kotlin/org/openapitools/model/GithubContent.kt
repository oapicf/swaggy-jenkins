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
 * @param name 
 * @param sha 
 * @param propertyClass 
 * @param repo 
 * @param propertySize 
 * @param owner 
 * @param path 
 * @param base64Data 
 */
data class GithubContent(

    @field:JsonProperty("name") val name: kotlin.String? = null,

    @field:JsonProperty("sha") val sha: kotlin.String? = null,

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:JsonProperty("repo") val repo: kotlin.String? = null,

    @field:JsonProperty("size") val propertySize: kotlin.Int? = null,

    @field:JsonProperty("owner") val owner: kotlin.String? = null,

    @field:JsonProperty("path") val path: kotlin.String? = null,

    @field:JsonProperty("base64Data") val base64Data: kotlin.String? = null
) {

}

