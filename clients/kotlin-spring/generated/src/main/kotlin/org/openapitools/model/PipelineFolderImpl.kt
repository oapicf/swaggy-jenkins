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
 * @param displayName 
 * @param fullName 
 * @param name 
 * @param organization 
 * @param numberOfFolders 
 * @param numberOfPipelines 
 */
data class PipelineFolderImpl(

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:JsonProperty("displayName") val displayName: kotlin.String? = null,

    @field:JsonProperty("fullName") val fullName: kotlin.String? = null,

    @field:JsonProperty("name") val name: kotlin.String? = null,

    @field:JsonProperty("organization") val organization: kotlin.String? = null,

    @field:JsonProperty("numberOfFolders") val numberOfFolders: kotlin.Int? = null,

    @field:JsonProperty("numberOfPipelines") val numberOfPipelines: kotlin.Int? = null
) {

}

