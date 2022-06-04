package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.Link
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
 * @param runs 
 * @param self 
 * @param queue 
 * @param actions 
 * @param propertyClass 
 */
data class PipelineImpllinks(

    @field:Valid
    @Schema(example = "null", description = "")
    @field:JsonProperty("runs") val runs: Link? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @field:JsonProperty("self") val self: Link? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @field:JsonProperty("queue") val queue: Link? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @field:JsonProperty("actions") val actions: Link? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null
) {

}

