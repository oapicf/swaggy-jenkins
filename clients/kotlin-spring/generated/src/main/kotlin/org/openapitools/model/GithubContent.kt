package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Email
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size
import javax.validation.Valid
import io.swagger.v3.oas.annotations.media.Schema

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

    @Schema(example = "null", description = "")
    @get:JsonProperty("name") val name: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("sha") val sha: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("repo") val repo: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("size") val propertySize: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("owner") val owner: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("path") val path: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("base64Data") val base64Data: kotlin.String? = null
) {

}

