/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 2.0.1-pre.0
* Contact: blah+oapicf@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.server.models

import org.openapitools.server.models.GithubRepositorieslinks
import org.openapitools.server.models.GithubRepository

/**
 * 
 * @param propertyClass 
 * @param links 
 * @param items 
 * @param lastPage 
 * @param nextPage 
 * @param pageSize 
 */
data class GithubRepositories(
    val propertyClass: kotlin.String? = null,
    val links: GithubRepositorieslinks? = null,
    val items: kotlin.collections.List<GithubRepository>? = null,
    val lastPage: kotlin.Int? = null,
    val nextPage: kotlin.Int? = null,
    val pageSize: kotlin.Int? = null
) 

