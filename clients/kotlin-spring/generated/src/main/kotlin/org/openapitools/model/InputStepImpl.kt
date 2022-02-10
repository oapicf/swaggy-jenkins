package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.InputStepImpllinks
import org.openapitools.model.StringParameterDefinition
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
 * @param id 
 * @param message 
 * @param ok 
 * @param parameters 
 * @param submitter 
 */
data class InputStepImpl(

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:Valid
    @field:JsonProperty("_links") val links: InputStepImpllinks? = null,

    @field:JsonProperty("id") val id: kotlin.String? = null,

    @field:JsonProperty("message") val message: kotlin.String? = null,

    @field:JsonProperty("ok") val ok: kotlin.String? = null,

    @field:Valid
    @field:JsonProperty("parameters") val parameters: kotlin.collections.List<StringParameterDefinition>? = null,

    @field:JsonProperty("submitter") val submitter: kotlin.String? = null
) {

}

