package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.PipelineBranchesitempullRequestlinks
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
 * @param links 
 * @param author 
 * @param id 
 * @param title 
 * @param url 
 * @param propertyClass 
 */
data class PipelineBranchesitempullRequest(

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("_links") val links: PipelineBranchesitempullRequestlinks? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("author") val author: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("id") val id: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("title") val title: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("url") val url: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null
    ) {

}

