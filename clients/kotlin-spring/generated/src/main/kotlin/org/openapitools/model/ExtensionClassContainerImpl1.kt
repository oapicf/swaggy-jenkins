package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ExtensionClassContainerImpl1links
import org.openapitools.model.ExtensionClassContainerImpl1map
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
 * @param map 
 */
data class ExtensionClassContainerImpl1(

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:Valid
    @field:JsonProperty("_links") val links: ExtensionClassContainerImpl1links? = null,

    @field:Valid
    @field:JsonProperty("map") val map: ExtensionClassContainerImpl1map? = null
) {

}

