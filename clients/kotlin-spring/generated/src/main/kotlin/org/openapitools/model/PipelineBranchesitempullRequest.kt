package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.PipelineBranchesitempullRequestlinks
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
 * @param links 
 * @param author 
 * @param id 
 * @param title 
 * @param url 
 * @param propertyClass 
 */
data class PipelineBranchesitempullRequest(

    @field:Valid
    @field:JsonProperty("_links") val links: PipelineBranchesitempullRequestlinks? = null,

    @field:JsonProperty("author") val author: kotlin.String? = null,

    @field:JsonProperty("id") val id: kotlin.String? = null,

    @field:JsonProperty("title") val title: kotlin.String? = null,

    @field:JsonProperty("url") val url: kotlin.String? = null,

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null
) {

}

