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


        
import com.google.gson.annotations.SerializedName
import com.fasterxml.jackson.annotation.JsonIgnoreProperties
import com.fasterxml.jackson.annotation.JsonInclude
/**
 * 
 * @param description 
 * @param iconClassName 
 * @param iconUrl 
 * @param score 
 * @param propertyClass 
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
data class FreeStyleProjecthealthReport (
    val description: kotlin.String? = null,
    val iconClassName: kotlin.String? = null,
    val iconUrl: kotlin.String? = null,
    val score: kotlin.Int? = null,
    val propertyClass: kotlin.String? = null
) {

}

