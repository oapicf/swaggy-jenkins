/**
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
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


import com.squareup.moshi.Json

/**
 * 
 *
 * @param propertyClass 
 * @param shortDescription 
 * @param userId 
 * @param userName 
 */

data class CauseUserIdCause (

    @Json(name = "_class")
    val propertyClass: kotlin.String? = null,

    @Json(name = "shortDescription")
    val shortDescription: kotlin.String? = null,

    @Json(name = "userId")
    val userId: kotlin.String? = null,

    @Json(name = "userName")
    val userName: kotlin.String? = null

)

