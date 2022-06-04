/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.5.1-pre.0
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.server.api.model

import org.openapitools.server.api.model.GithubRepositorylinks
import org.openapitools.server.api.model.GithubRepositorypermissions

        
import com.google.gson.annotations.SerializedName
import com.fasterxml.jackson.annotation.JsonIgnoreProperties
import com.fasterxml.jackson.annotation.JsonInclude
/**
 * 
 * @param propertyClass 
 * @param links 
 * @param defaultBranch 
 * @param description 
 * @param name 
 * @param permissions 
 * @param &#x60;private&#x60; 
 * @param fullName 
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
data class GithubRepository (
    val propertyClass: kotlin.String? = null,
    val links: GithubRepositorylinks? = null,
    val defaultBranch: kotlin.String? = null,
    val description: kotlin.String? = null,
    val name: kotlin.String? = null,
    val permissions: GithubRepositorypermissions? = null,
    val `private`: kotlin.Boolean? = null,
    val fullName: kotlin.String? = null
) {

}

