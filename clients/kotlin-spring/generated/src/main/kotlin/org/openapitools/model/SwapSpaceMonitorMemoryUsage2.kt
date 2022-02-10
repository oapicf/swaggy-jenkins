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
 * @param propertyClass 
 * @param availablePhysicalMemory 
 * @param availableSwapSpace 
 * @param totalPhysicalMemory 
 * @param totalSwapSpace 
 */
data class SwapSpaceMonitorMemoryUsage2(

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:JsonProperty("availablePhysicalMemory") val availablePhysicalMemory: kotlin.Int? = null,

    @field:JsonProperty("availableSwapSpace") val availableSwapSpace: kotlin.Int? = null,

    @field:JsonProperty("totalPhysicalMemory") val totalPhysicalMemory: kotlin.Int? = null,

    @field:JsonProperty("totalSwapSpace") val totalSwapSpace: kotlin.Int? = null
) {

}

