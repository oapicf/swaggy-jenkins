package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ExtensionClassImpllinks
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
 * @param propertyClass 
 * @param links 
 * @param classes 
 */
data class ExtensionClassImpl(

    @Schema(example = "null", description = "")
    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @field:JsonProperty("_links") val links: ExtensionClassImpllinks? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("classes") val classes: kotlin.collections.List<kotlin.String>? = null
) {

}

