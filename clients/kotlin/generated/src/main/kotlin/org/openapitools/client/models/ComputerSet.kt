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

import org.openapitools.client.models.HudsonMasterComputer

import com.squareup.moshi.Json

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

