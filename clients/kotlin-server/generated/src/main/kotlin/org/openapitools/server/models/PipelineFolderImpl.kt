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
package org.openapitools.server.models


/**
 * 
 * @param propertyClass 
 * @param displayName 
 * @param fullName 
 * @param name 
 * @param organization 
 * @param numberOfFolders 
 * @param numberOfPipelines 
 */
data class PipelineFolderImpl(
    val propertyClass: kotlin.String? = null,
    val displayName: kotlin.String? = null,
    val fullName: kotlin.String? = null,
    val name: kotlin.String? = null,
    val organization: kotlin.String? = null,
    val numberOfFolders: kotlin.Int? = null,
    val numberOfPipelines: kotlin.Int? = null
) 

