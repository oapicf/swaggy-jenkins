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

import org.openapitools.server.models.Link

/**
 * 
 * @param nodes 
 * @param log 
 * @param self 
 * @param actions 
 * @param steps 
 * @param propertyClass 
 */
data class PipelineRunImpllinks(
    val nodes: Link? = null,
    val log: Link? = null,
    val self: Link? = null,
    val actions: Link? = null,
    val steps: Link? = null,
    val propertyClass: kotlin.String? = null
) 

