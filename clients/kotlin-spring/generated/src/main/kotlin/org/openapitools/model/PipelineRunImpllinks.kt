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
 * @param nodes 
 * @param log 
 * @param self 
 * @param actions 
 * @param steps 
 * @param propertyClass 
 */
data class PipelineRunImpllinks(

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("nodes") val nodes: Link? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("log") val log: Link? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("self") val self: Link? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("actions") val actions: Link? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("steps") val steps: Link? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null
    ) {

}

