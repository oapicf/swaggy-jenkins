/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package org.openapitools.client.models

import org.openapitools.client.models.ExtensionClassImpl

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl 
 * @param ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl 
 * @param propertyClass 
 */


data class ExtensionClassContainerImpl1map (

    @Json(name = "io.jenkins.blueocean.service.embedded.rest.PipelineImpl")
    val ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl: ExtensionClassImpl? = null,

    @Json(name = "io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl")
    val ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl: ExtensionClassImpl? = null,

    @Json(name = "_class")
    val propertyClass: kotlin.String? = null

)

