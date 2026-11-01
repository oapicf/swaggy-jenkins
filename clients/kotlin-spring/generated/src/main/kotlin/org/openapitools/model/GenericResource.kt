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
 * @param displayName 
 * @param durationInMillis 
 * @param id 
 * @param result 
 * @param startTime 
 */
data class GenericResource(

    @Schema(description = "")
    @param:JsonProperty("_class")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("displayName")
    @get:JsonProperty("displayName") val displayName: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("durationInMillis")
    @get:JsonProperty("durationInMillis") val durationInMillis: kotlin.Int? = null,

    @Schema(description = "")
    @param:JsonProperty("id")
    @get:JsonProperty("id") val id: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("result")
    @get:JsonProperty("result") val result: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("startTime")
    @get:JsonProperty("startTime") val startTime: kotlin.String? = null
) {

}

