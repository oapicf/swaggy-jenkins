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
package org.openapitools.client.models

import org.openapitools.client.models.FreeStyleProject

/**
 * 
 * @param Underscoreclass 
 * @param description 
 * @param jobs 
 * @param name 
 * @param url 
 */
data class ListView (
    val Underscoreclass: kotlin.String? = null,
    val description: kotlin.String? = null,
    val jobs: kotlin.Array<FreeStyleProject>? = null,
    val name: kotlin.String? = null,
    val url: kotlin.String? = null
) {

}

