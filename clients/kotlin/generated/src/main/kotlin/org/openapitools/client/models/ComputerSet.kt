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

import org.openapitools.client.models.HudsonMasterComputer

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param propertyClass 
 * @param busyExecutors 
 * @param computer 
 * @param displayName 
 * @param totalExecutors 
 */


data class ComputerSet (

    @Json(name = "_class")
    val propertyClass: kotlin.String? = null,

    @Json(name = "busyExecutors")
    val busyExecutors: kotlin.Int? = null,

    @Json(name = "computer")
    val computer: kotlin.collections.List<HudsonMasterComputer>? = null,

    @Json(name = "displayName")
    val displayName: kotlin.String? = null,

    @Json(name = "totalExecutors")
    val totalExecutors: kotlin.Int? = null

)

