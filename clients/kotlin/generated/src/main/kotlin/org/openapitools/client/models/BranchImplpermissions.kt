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


import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param create 
 * @param read 
 * @param start 
 * @param stop 
 * @param propertyClass 
 */


data class BranchImplpermissions (

    @Json(name = "create")
    val create: kotlin.Boolean? = null,

    @Json(name = "read")
    val read: kotlin.Boolean? = null,

    @Json(name = "start")
    val start: kotlin.Boolean? = null,

    @Json(name = "stop")
    val stop: kotlin.Boolean? = null,

    @Json(name = "_class")
    val propertyClass: kotlin.String? = null

)

