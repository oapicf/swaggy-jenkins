/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.1.1
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.server.models

import org.openapitools.server.models.FreeStyleBuild
import org.openapitools.server.models.FreeStyleProjectactions
import org.openapitools.server.models.FreeStyleProjecthealthReport
import org.openapitools.server.models.NullSCM

/**
 * 
 * @param propertyClass 
 * @param name 
 * @param url 
 * @param color 
 * @param actions 
 * @param description 
 * @param displayName 
 * @param displayNameOrNull 
 * @param fullDisplayName 
 * @param fullName 
 * @param buildable 
 * @param builds 
 * @param firstBuild 
 * @param healthReport 
 * @param inQueue 
 * @param keepDependencies 
 * @param lastBuild 
 * @param lastCompletedBuild 
 * @param lastFailedBuild 
 * @param lastStableBuild 
 * @param lastSuccessfulBuild 
 * @param lastUnstableBuild 
 * @param lastUnsuccessfulBuild 
 * @param nextBuildNumber 
 * @param queueItem 
 * @param concurrentBuild 
 * @param scm 
 */
data class FreeStyleProject(
    val propertyClass: kotlin.String? = null,
    val name: kotlin.String? = null,
    val url: kotlin.String? = null,
    val color: kotlin.String? = null,
    val actions: kotlin.collections.List<FreeStyleProjectactions>? = null,
    val description: kotlin.String? = null,
    val displayName: kotlin.String? = null,
    val displayNameOrNull: kotlin.String? = null,
    val fullDisplayName: kotlin.String? = null,
    val fullName: kotlin.String? = null,
    val buildable: kotlin.Boolean? = null,
    val builds: kotlin.collections.List<FreeStyleBuild>? = null,
    val firstBuild: FreeStyleBuild? = null,
    val healthReport: kotlin.collections.List<FreeStyleProjecthealthReport>? = null,
    val inQueue: kotlin.Boolean? = null,
    val keepDependencies: kotlin.Boolean? = null,
    val lastBuild: FreeStyleBuild? = null,
    val lastCompletedBuild: FreeStyleBuild? = null,
    val lastFailedBuild: kotlin.String? = null,
    val lastStableBuild: FreeStyleBuild? = null,
    val lastSuccessfulBuild: FreeStyleBuild? = null,
    val lastUnstableBuild: kotlin.String? = null,
    val lastUnsuccessfulBuild: kotlin.String? = null,
    val nextBuildNumber: kotlin.Int? = null,
    val queueItem: kotlin.String? = null,
    val concurrentBuild: kotlin.Boolean? = null,
    val scm: NullSCM? = null
) 

