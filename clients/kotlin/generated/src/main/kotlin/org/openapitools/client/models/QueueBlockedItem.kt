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

import org.openapitools.client.models.CauseAction
import org.openapitools.client.models.FreeStyleProject

/**
 * 
 * @param Underscoreclass 
 * @param actions 
 * @param blocked 
 * @param buildable 
 * @param id 
 * @param inQueueSince 
 * @param params 
 * @param stuck 
 * @param task 
 * @param url 
 * @param why 
 * @param buildableStartMilliseconds 
 */
data class QueueBlockedItem (
    val Underscoreclass: kotlin.String? = null,
    val actions: kotlin.Array<CauseAction>? = null,
    val blocked: kotlin.Boolean? = null,
    val buildable: kotlin.Boolean? = null,
    val id: kotlin.Int? = null,
    val inQueueSince: kotlin.Int? = null,
    val params: kotlin.String? = null,
    val stuck: kotlin.Boolean? = null,
    val task: FreeStyleProject? = null,
    val url: kotlin.String? = null,
    val why: kotlin.String? = null,
    val buildableStartMilliseconds: kotlin.Int? = null
) {

}

