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
 * @param admin 
 * @param push 
 * @param pull 
 * @param propertyClass 
 */


data class GithubRepositorypermissions (

    @Json(name = "admin")
    val admin: kotlin.Boolean? = null,

    @Json(name = "push")
    val push: kotlin.Boolean? = null,

    @Json(name = "pull")
    val pull: kotlin.Boolean? = null,

    @Json(name = "_class")
    val propertyClass: kotlin.String? = null

)

