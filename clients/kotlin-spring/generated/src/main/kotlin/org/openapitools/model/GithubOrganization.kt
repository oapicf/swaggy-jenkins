package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.GithubOrganizationlinks
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
 * @param jenkinsOrganizationPipeline 
 * @param name 
 */
data class GithubOrganization(

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:Valid
    @field:JsonProperty("_links") val links: GithubOrganizationlinks? = null,

    @field:JsonProperty("jenkinsOrganizationPipeline") val jenkinsOrganizationPipeline: kotlin.Boolean? = null,

    @field:JsonProperty("name") val name: kotlin.String? = null
) {

}

