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

    @Schema(example = "null", description = "")
    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("displayName") val displayName: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("estimatedDurationInMillis") val estimatedDurationInMillis: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("fullDisplayName") val fullDisplayName: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("fullName") val fullName: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("name") val name: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("organization") val organization: kotlin.String? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @field:JsonProperty("parameters") val parameters: kotlin.collections.List<StringParameterDefinition>? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @field:JsonProperty("permissions") val permissions: BranchImplpermissions? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("weatherScore") val weatherScore: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("pullRequest") val pullRequest: kotlin.String? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @field:JsonProperty("_links") val links: BranchImpllinks? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @field:JsonProperty("latestRun") val latestRun: PipelineRunImpl? = null
) {

}

