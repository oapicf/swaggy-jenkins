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

import org.openapitools.client.models.CauseUserIdCause

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param propertyClass 
 * @param causes 
 */


data class CauseAction (

    @Json(name = "_class")
    val propertyClass: kotlin.String? = null,

    @Json(name = "causes")
    val causes: kotlin.collections.List<CauseUserIdCause>? = null

)

