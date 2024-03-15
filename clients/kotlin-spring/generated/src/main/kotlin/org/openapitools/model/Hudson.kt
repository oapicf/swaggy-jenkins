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

    @Schema(example = "null", description = "")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("assignedLabels") val assignedLabels: kotlin.collections.List<HudsonassignedLabels>? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("mode") val mode: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("nodeDescription") val nodeDescription: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("nodeName") val nodeName: kotlin.String? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("numExecutors") val numExecutors: kotlin.Int? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("description") val description: kotlin.String? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("jobs") val jobs: kotlin.collections.List<FreeStyleProject>? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("primaryView") val primaryView: AllView? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("quietingDown") val quietingDown: kotlin.Boolean? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("slaveAgentPort") val slaveAgentPort: kotlin.Int? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("unlabeledLoad") val unlabeledLoad: UnlabeledLoadStatistics? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("useCrumbs") val useCrumbs: kotlin.Boolean? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("useSecurity") val useSecurity: kotlin.Boolean? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("views") val views: kotlin.collections.List<AllView>? = null
) {

}

