package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ExtensionClassImpl
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
 * @param ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl 
 * @param ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl 
 * @param propertyClass 
 */
data class ExtensionClassContainerImpl1map(

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("io.jenkins.blueocean.service.embedded.rest.PipelineImpl") val ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl: ExtensionClassImpl? = null,

    @field:Valid
    @Schema(example = "null", description = "")
    @get:JsonProperty("io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl") val ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl: ExtensionClassImpl? = null,

    @Schema(example = "null", description = "")
    @get:JsonProperty("_class") val propertyClass: kotlin.String? = null
) {

}

