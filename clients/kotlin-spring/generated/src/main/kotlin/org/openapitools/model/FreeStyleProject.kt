package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.FreeStyleBuild
import org.openapitools.model.FreeStyleProjectactions
import org.openapitools.model.FreeStyleProjecthealthReport
import org.openapitools.model.NullSCM
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

    @Schema(description = "")
    @param:JsonProperty("_class")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("name")
    @get:JsonProperty("name") val name: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("url")
    @get:JsonProperty("url") val url: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("color")
    @get:JsonProperty("color") val color: kotlin.String? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("actions")
    @get:JsonProperty("actions") val actions: kotlin.collections.List<FreeStyleProjectactions>? = null,

    @Schema(description = "")
    @param:JsonProperty("description")
    @get:JsonProperty("description") val description: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("displayName")
    @get:JsonProperty("displayName") val displayName: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("displayNameOrNull")
    @get:JsonProperty("displayNameOrNull") val displayNameOrNull: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("fullDisplayName")
    @get:JsonProperty("fullDisplayName") val fullDisplayName: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("fullName")
    @get:JsonProperty("fullName") val fullName: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("buildable")
    @get:JsonProperty("buildable") val buildable: kotlin.Boolean? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("builds")
    @get:JsonProperty("builds") val builds: kotlin.collections.List<FreeStyleBuild>? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("firstBuild")
    @get:JsonProperty("firstBuild") val firstBuild: FreeStyleBuild? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("healthReport")
    @get:JsonProperty("healthReport") val healthReport: kotlin.collections.List<FreeStyleProjecthealthReport>? = null,

    @Schema(description = "")
    @param:JsonProperty("inQueue")
    @get:JsonProperty("inQueue") val inQueue: kotlin.Boolean? = null,

    @Schema(description = "")
    @param:JsonProperty("keepDependencies")
    @get:JsonProperty("keepDependencies") val keepDependencies: kotlin.Boolean? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("lastBuild")
    @get:JsonProperty("lastBuild") val lastBuild: FreeStyleBuild? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("lastCompletedBuild")
    @get:JsonProperty("lastCompletedBuild") val lastCompletedBuild: FreeStyleBuild? = null,

    @Schema(description = "")
    @param:JsonProperty("lastFailedBuild")
    @get:JsonProperty("lastFailedBuild") val lastFailedBuild: kotlin.String? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("lastStableBuild")
    @get:JsonProperty("lastStableBuild") val lastStableBuild: FreeStyleBuild? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("lastSuccessfulBuild")
    @get:JsonProperty("lastSuccessfulBuild") val lastSuccessfulBuild: FreeStyleBuild? = null,

    @Schema(description = "")
    @param:JsonProperty("lastUnstableBuild")
    @get:JsonProperty("lastUnstableBuild") val lastUnstableBuild: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("lastUnsuccessfulBuild")
    @get:JsonProperty("lastUnsuccessfulBuild") val lastUnsuccessfulBuild: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("nextBuildNumber")
    @get:JsonProperty("nextBuildNumber") val nextBuildNumber: kotlin.Int? = null,

    @Schema(description = "")
    @param:JsonProperty("queueItem")
    @get:JsonProperty("queueItem") val queueItem: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("concurrentBuild")
    @get:JsonProperty("concurrentBuild") val concurrentBuild: kotlin.Boolean? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("scm")
    @get:JsonProperty("scm") val scm: NullSCM? = null
) {

}

