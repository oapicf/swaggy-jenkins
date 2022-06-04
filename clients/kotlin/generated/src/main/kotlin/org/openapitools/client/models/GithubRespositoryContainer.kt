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

import org.openapitools.client.models.GithubRepositories
import org.openapitools.client.models.GithubRespositoryContainerlinks

import com.squareup.moshi.Json

/**
 * 
 *
 * @param propertyClass 
 * @param links 
 * @param repositories 
 */

data class GithubRespositoryContainer (

    @Json(name = "_class")
    val propertyClass: kotlin.String? = null,

    @Json(name = "_links")
    val links: GithubRespositoryContainerlinks? = null,

    @Json(name = "repositories")
    val repositories: GithubRepositories? = null

)

