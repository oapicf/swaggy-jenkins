package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.FreeStyleBuild
import org.openapitools.model.FreeStyleProjectactions
import org.openapitools.model.FreeStyleProjecthealthReport
import org.openapitools.model.NullSCM
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
 * @param name 
 * @param url 
 * @param color 
 * @param actions 
 * @param description 
 * @param displayName 
 * @param displayNameOrNull 
 * @param fullDisplayName 
 * @param fullName 
 * @param buildable 
 * @param builds 
 * @param firstBuild 
 * @param healthReport 
 * @param inQueue 
 * @param keepDependencies 
 * @param lastBuild 
 * @param lastCompletedBuild 
 * @param lastFailedBuild 
 * @param lastStableBuild 
 * @param lastSuccessfulBuild 
 * @param lastUnstableBuild 
 * @param lastUnsuccessfulBuild 
 * @param nextBuildNumber 
 * @param queueItem 
 * @param concurrentBuild 
 * @param scm 
 */
data class FreeStyleProject(

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:JsonProperty("name") val name: kotlin.String? = null,

    @field:JsonProperty("url") val url: kotlin.String? = null,

    @field:JsonProperty("color") val color: kotlin.String? = null,

    @field:Valid
    @field:JsonProperty("actions") val actions: kotlin.collections.List<FreeStyleProjectactions>? = null,

    @field:JsonProperty("description") val description: kotlin.String? = null,

    @field:JsonProperty("displayName") val displayName: kotlin.String? = null,

    @field:JsonProperty("displayNameOrNull") val displayNameOrNull: kotlin.String? = null,

    @field:JsonProperty("fullDisplayName") val fullDisplayName: kotlin.String? = null,

    @field:JsonProperty("fullName") val fullName: kotlin.String? = null,

    @field:JsonProperty("buildable") val buildable: kotlin.Boolean? = null,

    @field:Valid
    @field:JsonProperty("builds") val builds: kotlin.collections.List<FreeStyleBuild>? = null,

    @field:Valid
    @field:JsonProperty("firstBuild") val firstBuild: FreeStyleBuild? = null,

    @field:Valid
    @field:JsonProperty("healthReport") val healthReport: kotlin.collections.List<FreeStyleProjecthealthReport>? = null,

    @field:JsonProperty("inQueue") val inQueue: kotlin.Boolean? = null,

    @field:JsonProperty("keepDependencies") val keepDependencies: kotlin.Boolean? = null,

    @field:Valid
    @field:JsonProperty("lastBuild") val lastBuild: FreeStyleBuild? = null,

    @field:Valid
    @field:JsonProperty("lastCompletedBuild") val lastCompletedBuild: FreeStyleBuild? = null,

    @field:JsonProperty("lastFailedBuild") val lastFailedBuild: kotlin.String? = null,

    @field:Valid
    @field:JsonProperty("lastStableBuild") val lastStableBuild: FreeStyleBuild? = null,

    @field:Valid
    @field:JsonProperty("lastSuccessfulBuild") val lastSuccessfulBuild: FreeStyleBuild? = null,

    @field:JsonProperty("lastUnstableBuild") val lastUnstableBuild: kotlin.String? = null,

    @field:JsonProperty("lastUnsuccessfulBuild") val lastUnsuccessfulBuild: kotlin.String? = null,

    @field:JsonProperty("nextBuildNumber") val nextBuildNumber: kotlin.Int? = null,

    @field:JsonProperty("queueItem") val queueItem: kotlin.String? = null,

    @field:JsonProperty("concurrentBuild") val concurrentBuild: kotlin.Boolean? = null,

    @field:Valid
    @field:JsonProperty("scm") val scm: NullSCM? = null
) {

}

