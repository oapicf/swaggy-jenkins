package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.GithubRepositories
import org.openapitools.model.GithubRespositoryContainerlinks
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
 * @param links 
 * @param repositories 
 */
data class GithubRespositoryContainer(

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:Valid
    @field:JsonProperty("_links") val links: GithubRespositoryContainerlinks? = null,

    @field:Valid
    @field:JsonProperty("repositories") val repositories: GithubRepositories? = null
) {

}

