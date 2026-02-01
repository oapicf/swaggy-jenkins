package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.FreeStyleBuild
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
 * @param currentExecutable 
 * @param idle 
 * @param likelyStuck 
 * @param number 
 * @param progress 
 * @param propertyClass 
 */
data class HudsonMasterComputerexecutors(

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("currentExecutable") val currentExecutable: FreeStyleBuild? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("idle") val idle: kotlin.Boolean? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("likelyStuck") val likelyStuck: kotlin.Boolean? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("number") val number: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("progress") val progress: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null
) {

}

