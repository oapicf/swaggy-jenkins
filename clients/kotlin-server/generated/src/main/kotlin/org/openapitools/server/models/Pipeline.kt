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

import org.openapitools.server.models.PipelinelatestRun

/**
 * 
 * @param propertyClass 
 * @param organization 
 * @param name 
 * @param displayName 
 * @param fullName 
 * @param weatherScore 
 * @param estimatedDurationInMillis 
 * @param latestRun 
 */
data class Pipeline(
    val propertyClass: kotlin.String? = null,
    val organization: kotlin.String? = null,
    val name: kotlin.String? = null,
    val displayName: kotlin.String? = null,
    val fullName: kotlin.String? = null,
    val weatherScore: kotlin.Int? = null,
    val estimatedDurationInMillis: kotlin.Int? = null,
    val latestRun: PipelinelatestRun? = null
) 

