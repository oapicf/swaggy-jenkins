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


/**
 * 
 * @param durationInMillis 
 * @param estimatedDurationInMillis 
 * @param enQueueTime 
 * @param endTime 
 * @param id 
 * @param organization 
 * @param pipeline 
 * @param result 
 * @param runSummary 
 * @param startTime 
 * @param state 
 * @param type 
 * @param commitId 
 * @param propertyClass 
 */
data class PipelineBranchesitemlatestRun(
    val durationInMillis: kotlin.Int? = null,
    val estimatedDurationInMillis: kotlin.Int? = null,
    val enQueueTime: kotlin.String? = null,
    val endTime: kotlin.String? = null,
    val id: kotlin.String? = null,
    val organization: kotlin.String? = null,
    val pipeline: kotlin.String? = null,
    val result: kotlin.String? = null,
    val runSummary: kotlin.String? = null,
    val startTime: kotlin.String? = null,
    val state: kotlin.String? = null,
    val type: kotlin.String? = null,
    val commitId: kotlin.String? = null,
    val propertyClass: kotlin.String? = null
) 

