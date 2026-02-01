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
 * @param admin 
 * @param push 
 * @param pull 
 * @param propertyClass 
 */
data class GithubRepositorypermissions(

    @Schema(example = "null", description = "")
    @get:JsonProperty("admin") val admin: kotlin.Boolean? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("push") val push: kotlin.Boolean? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("pull") val pull: kotlin.Boolean? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null
) {

}

