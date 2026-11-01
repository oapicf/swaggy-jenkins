package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.HudsonMasterComputer
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
 * @param propertyClass 
 * @param busyExecutors 
 * @param computer 
 * @param displayName 
 * @param totalExecutors 
 */
data class ComputerSet(

    @Schema(description = "")
    @param:JsonProperty("_class")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("busyExecutors")
    @get:JsonProperty("busyExecutors") val busyExecutors: kotlin.Int? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("computer")
    @get:JsonProperty("computer") val computer: kotlin.collections.List<HudsonMasterComputer>? = null,

    @Schema(description = "")
    @param:JsonProperty("displayName")
    @get:JsonProperty("displayName") val displayName: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("totalExecutors")
    @get:JsonProperty("totalExecutors") val totalExecutors: kotlin.Int? = null
) {

}

