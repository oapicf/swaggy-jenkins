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

import org.openapitools.server.api.model.StringParameterValue

        
import com.google.gson.annotations.SerializedName
import com.fasterxml.jackson.annotation.JsonIgnoreProperties
import com.fasterxml.jackson.annotation.JsonInclude
/**
 * 
 * @param propertyClass 
 * @param defaultParameterValue 
 * @param description 
 * @param name 
 * @param type 
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
data class StringParameterDefinition (
    val propertyClass: kotlin.String? = null,
    val defaultParameterValue: StringParameterValue? = null,
    val description: kotlin.String? = null,
    val name: kotlin.String? = null,
    val type: kotlin.String? = null
) {

}

