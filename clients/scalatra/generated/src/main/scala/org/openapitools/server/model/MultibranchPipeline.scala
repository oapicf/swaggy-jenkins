/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 */

package org.openapitools.server.model

case class MultibranchPipeline(
  displayName: Option[String],

  estimatedDurationInMillis: Option[Int],

  latestRun: Option[String],

  name: Option[String],

  organization: Option[String],

  weatherScore: Option[Int],

  branchNames: Option[List[String]],

  numberOfFailingBranches: Option[Int],

  numberOfFailingPullRequests: Option[Int],

  numberOfSuccessfulBranches: Option[Int],

  numberOfSuccessfulPullRequests: Option[Int],

  totalNumberOfBranches: Option[Int],

  totalNumberOfPullRequests: Option[Int],

  `class`: Option[String]

 )
