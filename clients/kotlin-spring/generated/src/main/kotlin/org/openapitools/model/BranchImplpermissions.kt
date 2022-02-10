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
 * @param create 
 * @param read 
 * @param start 
 * @param stop 
 * @param propertyClass 
 */
data class BranchImplpermissions(

    @field:JsonProperty("create") val create: kotlin.Boolean? = null,

    @field:JsonProperty("read") val read: kotlin.Boolean? = null,

    @field:JsonProperty("start") val start: kotlin.Boolean? = null,

    @field:JsonProperty("stop") val stop: kotlin.Boolean? = null,

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null
) {

}

