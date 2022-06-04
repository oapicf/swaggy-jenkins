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
 * @param durationInMillis 
 * @param estimatedDurationInMillis 
 * @param enQueueTime 
 * @param endTime 
 * @param id 
 * @param organization 
 * @param pipeline 
 * @param result 
 * @param runSummary 
 * @param startTime 
 * @param state 
 * @param type 
 * @param commitId 
 * @param propertyClass 
 */

data class PipelineBranchesitemlatestRun (

    @Json(name = "durationInMillis")
    val durationInMillis: kotlin.Int? = null,

    @Json(name = "estimatedDurationInMillis")
    val estimatedDurationInMillis: kotlin.Int? = null,

    @Json(name = "enQueueTime")
    val enQueueTime: kotlin.String? = null,

    @Json(name = "endTime")
    val endTime: kotlin.String? = null,

    @Json(name = "id")
    val id: kotlin.String? = null,

    @Json(name = "organization")
    val organization: kotlin.String? = null,

    @Json(name = "pipeline")
    val pipeline: kotlin.String? = null,

    @Json(name = "result")
    val result: kotlin.String? = null,

    @Json(name = "runSummary")
    val runSummary: kotlin.String? = null,

    @Json(name = "startTime")
    val startTime: kotlin.String? = null,

    @Json(name = "state")
    val state: kotlin.String? = null,

    @Json(name = "type")
    val type: kotlin.String? = null,

    @Json(name = "commitId")
    val commitId: kotlin.String? = null,

    @Json(name = "_class")
    val propertyClass: kotlin.String? = null

)

