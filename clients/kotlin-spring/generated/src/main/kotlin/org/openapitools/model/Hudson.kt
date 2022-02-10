package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.AllView
import org.openapitools.model.FreeStyleProject
import org.openapitools.model.HudsonassignedLabels
import org.openapitools.model.UnlabeledLoadStatistics
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

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null,

    @field:Valid
    @field:JsonProperty("assignedLabels") val assignedLabels: kotlin.collections.List<HudsonassignedLabels>? = null,

    @field:JsonProperty("mode") val mode: kotlin.String? = null,

    @field:JsonProperty("nodeDescription") val nodeDescription: kotlin.String? = null,

    @field:JsonProperty("nodeName") val nodeName: kotlin.String? = null,

    @field:JsonProperty("numExecutors") val numExecutors: kotlin.Int? = null,

    @field:JsonProperty("description") val description: kotlin.String? = null,

    @field:Valid
    @field:JsonProperty("jobs") val jobs: kotlin.collections.List<FreeStyleProject>? = null,

    @field:Valid
    @field:JsonProperty("primaryView") val primaryView: AllView? = null,

    @field:JsonProperty("quietingDown") val quietingDown: kotlin.Boolean? = null,

    @field:JsonProperty("slaveAgentPort") val slaveAgentPort: kotlin.Int? = null,

    @field:Valid
    @field:JsonProperty("unlabeledLoad") val unlabeledLoad: UnlabeledLoadStatistics? = null,

    @field:JsonProperty("useCrumbs") val useCrumbs: kotlin.Boolean? = null,

    @field:JsonProperty("useSecurity") val useSecurity: kotlin.Boolean? = null,

    @field:Valid
    @field:JsonProperty("views") val views: kotlin.collections.List<AllView>? = null
) {

}

