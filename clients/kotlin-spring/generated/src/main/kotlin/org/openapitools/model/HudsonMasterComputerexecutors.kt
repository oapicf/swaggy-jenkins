package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.FreeStyleBuild
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
 * @param currentExecutable 
 * @param idle 
 * @param likelyStuck 
 * @param number 
 * @param progress 
 * @param propertyClass 
 */
data class HudsonMasterComputerexecutors(

    @field:Valid
    @field:JsonProperty("currentExecutable") val currentExecutable: FreeStyleBuild? = null,

    @field:JsonProperty("idle") val idle: kotlin.Boolean? = null,

    @field:JsonProperty("likelyStuck") val likelyStuck: kotlin.Boolean? = null,

    @field:JsonProperty("number") val number: kotlin.Int? = null,

    @field:JsonProperty("progress") val progress: kotlin.Int? = null,

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null
) {

}

