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
 * @param expectedBuildNumber 
 * @param id 
 * @param pipeline 
 * @param queuedTime 
 */
data class QueueItemImpl(

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:JsonProperty("expectedBuildNumber") val expectedBuildNumber: kotlin.Int? = null,

    @field:JsonProperty("id") val id: kotlin.String? = null,

    @field:JsonProperty("pipeline") val pipeline: kotlin.String? = null,

    @field:JsonProperty("queuedTime") val queuedTime: kotlin.Int? = null
) {

}

