/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* OpenAPI spec version: 1.1.1
* Contact: blah@cliffano.com
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
 * @param Underscoreclass 
 * @param Underscorelinks 
 * @param items 
 * @param lastPage 
 * @param nextPage 
 * @param pageSize 
 */
data class GithubRepositories (
    val Underscoreclass: kotlin.String? = null,
    val Underscorelinks: GithubRepositorieslinks? = null,
    val items: kotlin.Array<GithubRepository>? = null,
    val lastPage: kotlin.Int? = null,
    val nextPage: kotlin.Int? = null,
    val pageSize: kotlin.Int? = null
) {

}

