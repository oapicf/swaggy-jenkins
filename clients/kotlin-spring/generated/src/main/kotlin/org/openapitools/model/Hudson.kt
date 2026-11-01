package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.AllView
import org.openapitools.model.FreeStyleProject
import org.openapitools.model.HudsonassignedLabels
import org.openapitools.model.UnlabeledLoadStatistics
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
 * @param assignedLabels 
 * @param mode 
 * @param nodeDescription 
 * @param nodeName 
 * @param numExecutors 
 * @param description 
 * @param jobs 
 * @param primaryView 
 * @param quietingDown 
 * @param slaveAgentPort 
 * @param unlabeledLoad 
 * @param useCrumbs 
 * @param useSecurity 
 * @param views 
 */
data class Hudson(

    @Schema(description = "")
    @param:JsonProperty("_class")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("assignedLabels")
    @get:JsonProperty("assignedLabels") val assignedLabels: kotlin.collections.List<HudsonassignedLabels>? = null,

    @Schema(description = "")
    @param:JsonProperty("mode")
    @get:JsonProperty("mode") val mode: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("nodeDescription")
    @get:JsonProperty("nodeDescription") val nodeDescription: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("nodeName")
    @get:JsonProperty("nodeName") val nodeName: kotlin.String? = null,

    @Schema(description = "")
    @param:JsonProperty("numExecutors")
    @get:JsonProperty("numExecutors") val numExecutors: kotlin.Int? = null,

    @Schema(description = "")
    @param:JsonProperty("description")
    @get:JsonProperty("description") val description: kotlin.String? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("jobs")
    @get:JsonProperty("jobs") val jobs: kotlin.collections.List<FreeStyleProject>? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("primaryView")
    @get:JsonProperty("primaryView") val primaryView: AllView? = null,

    @Schema(description = "")
    @param:JsonProperty("quietingDown")
    @get:JsonProperty("quietingDown") val quietingDown: kotlin.Boolean? = null,

    @Schema(description = "")
    @param:JsonProperty("slaveAgentPort")
    @get:JsonProperty("slaveAgentPort") val slaveAgentPort: kotlin.Int? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("unlabeledLoad")
    @get:JsonProperty("unlabeledLoad") val unlabeledLoad: UnlabeledLoadStatistics? = null,

    @Schema(description = "")
    @param:JsonProperty("useCrumbs")
    @get:JsonProperty("useCrumbs") val useCrumbs: kotlin.Boolean? = null,

    @Schema(description = "")
    @param:JsonProperty("useSecurity")
    @get:JsonProperty("useSecurity") val useSecurity: kotlin.Boolean? = null,

    @field:Valid
    @Schema(description = "")
    @param:JsonProperty("views")
    @get:JsonProperty("views") val views: kotlin.collections.List<AllView>? = null
) {

}

