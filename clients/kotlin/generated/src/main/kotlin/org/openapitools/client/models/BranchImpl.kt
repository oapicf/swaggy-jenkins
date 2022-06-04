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

import org.openapitools.client.models.BranchImpllinks
import org.openapitools.client.models.BranchImplpermissions
import org.openapitools.client.models.PipelineRunImpl
import org.openapitools.client.models.StringParameterDefinition

import com.squareup.moshi.Json

/**
 * 
 *
 * @param propertyClass 
 * @param displayName 
 * @param estimatedDurationInMillis 
 * @param fullDisplayName 
 * @param fullName 
 * @param name 
 * @param organization 
 * @param parameters 
 * @param permissions 
 * @param weatherScore 
 * @param pullRequest 
 * @param links 
 * @param latestRun 
 */

data class BranchImpl (

    @Json(name = "_class")
    val propertyClass: kotlin.String? = null,

    @Json(name = "displayName")
    val displayName: kotlin.String? = null,

    @Json(name = "estimatedDurationInMillis")
    val estimatedDurationInMillis: kotlin.Int? = null,

    @Json(name = "fullDisplayName")
    val fullDisplayName: kotlin.String? = null,

    @Json(name = "fullName")
    val fullName: kotlin.String? = null,

    @Json(name = "name")
    val name: kotlin.String? = null,

    @Json(name = "organization")
    val organization: kotlin.String? = null,

    @Json(name = "parameters")
    val parameters: kotlin.collections.List<StringParameterDefinition>? = null,

    @Json(name = "permissions")
    val permissions: BranchImplpermissions? = null,

    @Json(name = "weatherScore")
    val weatherScore: kotlin.Int? = null,

    @Json(name = "pullRequest")
    val pullRequest: kotlin.String? = null,

    @Json(name = "_links")
    val links: BranchImpllinks? = null,

    @Json(name = "latestRun")
    val latestRun: PipelineRunImpl? = null

)

