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

import org.openapitools.server.api.model.CauseAction
import org.openapitools.server.api.model.EmptyChangeLogSet

        
import com.google.gson.annotations.SerializedName
import com.fasterxml.jackson.annotation.JsonIgnoreProperties
import com.fasterxml.jackson.annotation.JsonInclude
/**
 * 
 * @param propertyClass 
 * @param number 
 * @param url 
 * @param actions 
 * @param building 
 * @param description 
 * @param displayName 
 * @param duration 
 * @param estimatedDuration 
 * @param executor 
 * @param fullDisplayName 
 * @param id 
 * @param keepLog 
 * @param queueId 
 * @param result 
 * @param timestamp 
 * @param builtOn 
 * @param changeSet 
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
data class FreeStyleBuild (
    val propertyClass: kotlin.String? = null,
    val number: kotlin.Int? = null,
    val url: kotlin.String? = null,
    val actions: kotlin.Array<CauseAction>? = null,
    val building: kotlin.Boolean? = null,
    val description: kotlin.String? = null,
    val displayName: kotlin.String? = null,
    val duration: kotlin.Int? = null,
    val estimatedDuration: kotlin.Int? = null,
    val executor: kotlin.String? = null,
    val fullDisplayName: kotlin.String? = null,
    val id: kotlin.String? = null,
    val keepLog: kotlin.Boolean? = null,
    val queueId: kotlin.Int? = null,
    val result: kotlin.String? = null,
    val timestamp: kotlin.Int? = null,
    val builtOn: kotlin.String? = null,
    val changeSet: EmptyChangeLogSet? = null
) {

}

