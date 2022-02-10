package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.FavoriteImpllinks
import org.openapitools.model.PipelineImpl
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
 * @param links 
 * @param item 
 */
data class FavoriteImpl(

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:Valid
    @field:JsonProperty("_links") val links: FavoriteImpllinks? = null,

    @field:Valid
    @field:JsonProperty("item") val item: PipelineImpl? = null
) {

}

