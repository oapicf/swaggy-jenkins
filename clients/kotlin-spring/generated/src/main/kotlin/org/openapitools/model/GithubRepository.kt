package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.GithubRepositorylinks
import org.openapitools.model.GithubRepositorypermissions
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
 * @param links 
 * @param defaultBranch 
 * @param description 
 * @param name 
 * @param permissions 
 * @param &#x60;private&#x60; 
 * @param fullName 
 */
data class GithubRepository(

    @Schema(example = "null", description = "")
    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @field:JsonProperty("_links") val links: GithubRepositorylinks? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("defaultBranch") val defaultBranch: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("description") val description: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("name") val name: kotlin.String? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @field:JsonProperty("permissions") val permissions: GithubRepositorypermissions? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("private") val `private`: kotlin.Boolean? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("fullName") val fullName: kotlin.String? = null
) {

}

