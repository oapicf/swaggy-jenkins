package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.GithubScmlinks
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
 * @param credentialId 
 * @param id 
 * @param uri 
 */
data class GithubScm(

    @Schema(description = "")
    @param:JsonProperty("_class")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("_links")
    @get:JsonProperty("_links") val links: GithubScmlinks? = null,

    @Schema(description = "")
    @param:JsonProperty("credentialId")
    @get:JsonProperty("credentialId") val credentialId: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("id")
    @get:JsonProperty("id") val id: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("uri")
    @get:JsonProperty("uri") val uri: kotlin.String? = null
) {

}

