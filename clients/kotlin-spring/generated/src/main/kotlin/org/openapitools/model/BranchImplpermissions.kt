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
 * @param create 
 * @param read 
 * @param start 
 * @param stop 
 * @param propertyClass 
 */
data class BranchImplpermissions(

    @Schema(example = "null", description = "")
    @field:JsonProperty("create") val create: kotlin.Boolean? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("read") val read: kotlin.Boolean? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("start") val start: kotlin.Boolean? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("stop") val stop: kotlin.Boolean? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null
) {

}

