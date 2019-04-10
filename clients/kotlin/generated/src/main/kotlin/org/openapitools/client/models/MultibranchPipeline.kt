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


/**
 * 
 * @param displayName 
 * @param estimatedDurationInMillis 
 * @param latestRun 
 * @param name 
 * @param organization 
 * @param weatherScore 
 * @param branchNames 
 * @param numberOfFailingBranches 
 * @param numberOfFailingPullRequests 
 * @param numberOfSuccessfulBranches 
 * @param numberOfSuccessfulPullRequests 
 * @param totalNumberOfBranches 
 * @param totalNumberOfPullRequests 
 * @param Underscoreclass 
 */
data class MultibranchPipeline (
    val displayName: kotlin.String? = null,
    val estimatedDurationInMillis: kotlin.Int? = null,
    val latestRun: kotlin.String? = null,
    val name: kotlin.String? = null,
    val organization: kotlin.String? = null,
    val weatherScore: kotlin.Int? = null,
    val branchNames: kotlin.Array<kotlin.String>? = null,
    val numberOfFailingBranches: kotlin.Int? = null,
    val numberOfFailingPullRequests: kotlin.Int? = null,
    val numberOfSuccessfulBranches: kotlin.Int? = null,
    val numberOfSuccessfulPullRequests: kotlin.Int? = null,
    val totalNumberOfBranches: kotlin.Int? = null,
    val totalNumberOfPullRequests: kotlin.Int? = null,
    val Underscoreclass: kotlin.String? = null
) {

}

