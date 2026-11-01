package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.BranchImpllinks
import org.openapitools.model.BranchImplpermissions
import org.openapitools.model.PipelineRunImpl
import org.openapitools.model.StringParameterDefinition
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
 * @param estimatedDurationInMillis 
 * @param fullDisplayName 
 * @param fullName 
 * @param name 
 * @param organization 
 * @param parameters 
 * @param permissions 
 * @param weatherScore 
 * @param pullRequest 
 * @param links 
 * @param latestRun 
 */
data class BranchImpl(

    @Schema(description = "")
    @param:JsonProperty("_class")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("displayName")
    @get:JsonProperty("displayName") val displayName: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("estimatedDurationInMillis")
    @get:JsonProperty("estimatedDurationInMillis") val estimatedDurationInMillis: kotlin.Int? = null,

    @Schema(description = "")
    @param:JsonProperty("fullDisplayName")
    @get:JsonProperty("fullDisplayName") val fullDisplayName: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("fullName")
    @get:JsonProperty("fullName") val fullName: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("name")
    @get:JsonProperty("name") val name: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("organization")
    @get:JsonProperty("organization") val organization: kotlin.String? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("parameters")
    @get:JsonProperty("parameters") val parameters: kotlin.collections.List<StringParameterDefinition>? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("permissions")
    @get:JsonProperty("permissions") val permissions: BranchImplpermissions? = null,

    @Schema(description = "")
    @param:JsonProperty("weatherScore")
    @get:JsonProperty("weatherScore") val weatherScore: kotlin.Int? = null,

    @Schema(description = "")
    @param:JsonProperty("pullRequest")
    @get:JsonProperty("pullRequest") val pullRequest: kotlin.String? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("_links")
    @get:JsonProperty("_links") val links: BranchImpllinks? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("latestRun")
    @get:JsonProperty("latestRun") val latestRun: PipelineRunImpl? = null
) {

}

