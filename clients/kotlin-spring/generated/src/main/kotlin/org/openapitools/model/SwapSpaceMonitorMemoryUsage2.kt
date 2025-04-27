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
 * @param propertyClass 
 * @param availablePhysicalMemory 
 * @param availableSwapSpace 
 * @param totalPhysicalMemory 
 * @param totalSwapSpace 
 */
data class SwapSpaceMonitorMemoryUsage2(

    @Schema(example = "null", description = "")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("availablePhysicalMemory") val availablePhysicalMemory: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("availableSwapSpace") val availableSwapSpace: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("totalPhysicalMemory") val totalPhysicalMemory: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("totalSwapSpace") val totalSwapSpace: kotlin.Int? = null
    ) {

}

