/**
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
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
 * @param self 
 * @param propertyClass 
 */

data class InputStepImpllinks (

    @Json(name = "self")
    val self: Link? = null,

    @Json(name = "_class")
    val propertyClass: kotlin.String? = null

)

