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

import org.openapitools.server.models.QueueBlockedItem

/**
 * 
 * @param propertyClass 
 * @param items 
 */
data class Queue(
    val propertyClass: kotlin.String? = null,
    val items: kotlin.collections.List<QueueBlockedItem>? = null
) 

