/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.1.2-pre.0
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.server.models

import org.openapitools.server.models.Link

/**
 * 
 * @param runs 
 * @param self 
 * @param queue 
 * @param actions 
 * @param propertyClass 
 */
data class PipelineImpllinks(
    val runs: Link? = null,
    val self: Link? = null,
    val queue: Link? = null,
    val actions: Link? = null,
    val propertyClass: kotlin.String? = null
) 

