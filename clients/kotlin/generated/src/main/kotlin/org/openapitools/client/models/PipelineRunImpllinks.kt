/**
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
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

/**
 * 
 *
 * @param nodes 
 * @param log 
 * @param self 
 * @param actions 
 * @param steps 
 * @param propertyClass 
 */

data class PipelineRunImpllinks (

    @Json(name = "nodes")
    val nodes: Link? = null,

    @Json(name = "log")
    val log: Link? = null,

    @Json(name = "self")
    val self: Link? = null,

    @Json(name = "actions")
    val actions: Link? = null,

    @Json(name = "steps")
    val steps: Link? = null,

    @Json(name = "_class")
    val propertyClass: kotlin.String? = null

)

