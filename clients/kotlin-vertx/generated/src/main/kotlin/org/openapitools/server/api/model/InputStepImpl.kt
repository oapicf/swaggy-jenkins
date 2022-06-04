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

import org.openapitools.server.api.model.InputStepImpllinks
import org.openapitools.server.api.model.StringParameterDefinition

        
import com.google.gson.annotations.SerializedName
import com.fasterxml.jackson.annotation.JsonIgnoreProperties
import com.fasterxml.jackson.annotation.JsonInclude
/**
 * 
 * @param propertyClass 
 * @param links 
 * @param id 
 * @param message 
 * @param ok 
 * @param parameters 
 * @param submitter 
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
data class InputStepImpl (
    val propertyClass: kotlin.String? = null,
    val links: InputStepImpllinks? = null,
    val id: kotlin.String? = null,
    val message: kotlin.String? = null,
    val ok: kotlin.String? = null,
    val parameters: kotlin.Array<StringParameterDefinition>? = null,
    val submitter: kotlin.String? = null
) {

}

