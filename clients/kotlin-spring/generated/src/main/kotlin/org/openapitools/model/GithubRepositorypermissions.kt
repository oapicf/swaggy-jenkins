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
 * @param admin 
 * @param push 
 * @param pull 
 * @param propertyClass 
 */
data class GithubRepositorypermissions(

    @field:JsonProperty("admin") val admin: kotlin.Boolean? = null,

    @field:JsonProperty("push") val push: kotlin.Boolean? = null,

    @field:JsonProperty("pull") val pull: kotlin.Boolean? = null,

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null
) {

}

