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
package org.openapitools.server.api.model

import org.openapitools.server.api.model.HudsonMasterComputerexecutors
import org.openapitools.server.api.model.HudsonMasterComputermonitorData
import org.openapitools.server.api.model.Label1

        
import com.google.gson.annotations.SerializedName
import com.fasterxml.jackson.annotation.JsonIgnoreProperties
import com.fasterxml.jackson.annotation.JsonInclude
/**
 * 
 * @param propertyClass 
 * @param displayName 
 * @param executors 
 * @param icon 
 * @param iconClassName 
 * @param idle 
 * @param jnlpAgent 
 * @param launchSupported 
 * @param loadStatistics 
 * @param manualLaunchAllowed 
 * @param monitorData 
 * @param numExecutors 
 * @param offline 
 * @param offlineCause 
 * @param offlineCauseReason 
 * @param temporarilyOffline 
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
data class HudsonMasterComputer (
    val propertyClass: kotlin.String? = null,
    val displayName: kotlin.String? = null,
    val executors: kotlin.Array<HudsonMasterComputerexecutors>? = null,
    val icon: kotlin.String? = null,
    val iconClassName: kotlin.String? = null,
    val idle: kotlin.Boolean? = null,
    val jnlpAgent: kotlin.Boolean? = null,
    val launchSupported: kotlin.Boolean? = null,
    val loadStatistics: Label1? = null,
    val manualLaunchAllowed: kotlin.Boolean? = null,
    val monitorData: HudsonMasterComputermonitorData? = null,
    val numExecutors: kotlin.Int? = null,
    val offline: kotlin.Boolean? = null,
    val offlineCause: kotlin.String? = null,
    val offlineCauseReason: kotlin.String? = null,
    val temporarilyOffline: kotlin.Boolean? = null
) {

}

