package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.GithubRepositorieslinks
import org.openapitools.model.GithubRepository
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
 * @param items 
 * @param lastPage 
 * @param nextPage 
 * @param pageSize 
 */
data class GithubRepositories(

    @Schema(example = "null", description = "")
    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @field:JsonProperty("_links") val links: GithubRepositorieslinks? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @field:JsonProperty("items") val items: kotlin.collections.List<GithubRepository>? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("lastPage") val lastPage: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("nextPage") val nextPage: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @field:JsonProperty("pageSize") val pageSize: kotlin.Int? = null
) {

}

