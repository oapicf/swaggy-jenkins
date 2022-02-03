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

import org.openapitools.client.models.GithubOrganizationlinks

import com.squareup.moshi.Json

/**
 * 
 *
 * @param propertyClass 
 * @param links 
 * @param jenkinsOrganizationPipeline 
 * @param name 
 */

data class GithubOrganization (

    @Json(name = "_class")
    val propertyClass: kotlin.String? = null,

    @Json(name = "_links")
    val links: GithubOrganizationlinks? = null,

    @Json(name = "jenkinsOrganizationPipeline")
    val jenkinsOrganizationPipeline: kotlin.Boolean? = null,

    @Json(name = "name")
    val name: kotlin.String? = null

)

