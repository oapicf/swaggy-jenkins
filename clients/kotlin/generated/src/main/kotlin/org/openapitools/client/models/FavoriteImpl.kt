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

import org.openapitools.client.models.FavoriteImpllinks
import org.openapitools.client.models.PipelineImpl

import com.squareup.moshi.Json

/**
 * 
 *
 * @param propertyClass 
 * @param links 
 * @param item 
 */

data class FavoriteImpl (

    @Json(name = "_class")
    val propertyClass: kotlin.String? = null,

    @Json(name = "_links")
    val links: FavoriteImpllinks? = null,

    @Json(name = "item")
    val item: PipelineImpl? = null

)

