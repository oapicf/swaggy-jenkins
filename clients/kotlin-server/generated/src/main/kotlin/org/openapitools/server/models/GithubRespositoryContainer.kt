/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.1.1
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.server.models

import org.openapitools.server.models.GithubRepositories
import org.openapitools.server.models.GithubRespositoryContainerlinks

/**
 * 
 * @param propertyClass 
 * @param links 
 * @param repositories 
 */
data class GithubRespositoryContainer(
    val propertyClass: kotlin.String? = null,
    val links: GithubRespositoryContainerlinks? = null,
    val repositories: GithubRepositories? = null
) 

