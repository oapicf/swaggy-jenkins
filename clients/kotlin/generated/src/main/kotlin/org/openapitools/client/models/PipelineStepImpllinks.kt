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

import org.openapitools.client.models.Link

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param self 
 * @param actions 
 * @param propertyClass 
 */


data class PipelineStepImpllinks (

    @Json(name = "self")
    val self: Link? = null,

    @Json(name = "actions")
    val actions: Link? = null,

    @Json(name = "_class")
    val propertyClass: kotlin.String? = null

)

