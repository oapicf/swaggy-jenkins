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
 * @param timestamp 
 * @param path 
 * @param propertySize 
 */
data class DiskSpaceMonitorDescriptorDiskSpace(

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:JsonProperty("timestamp") val timestamp: kotlin.Int? = null,

    @field:JsonProperty("path") val path: kotlin.String? = null,

    @field:JsonProperty("size") val propertySize: kotlin.Int? = null
) {

}

