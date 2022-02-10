package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.Link
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
 * @param self 
 * @param actions 
 * @param propertyClass 
 */
data class PipelineStepImpllinks(

    @field:Valid
    @field:JsonProperty("self") val self: Link? = null,

    @field:Valid
    @field:JsonProperty("actions") val actions: Link? = null,

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null
) {

}

