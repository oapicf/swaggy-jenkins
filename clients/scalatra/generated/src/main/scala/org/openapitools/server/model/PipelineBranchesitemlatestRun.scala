/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 */

package org.openapitools.server.model

case class PipelineBranchesitemlatestRun(
  durationInMillis: Option[Int],

  estimatedDurationInMillis: Option[Int],

  enQueueTime: Option[String],

  endTime: Option[String],

  id: Option[String],

  organization: Option[String],

  pipeline: Option[String],

  result: Option[String],

  runSummary: Option[String],

  startTime: Option[String],

  state: Option[String],

  `type`: Option[String],

  commitId: Option[String],

  `class`: Option[String]

 )
