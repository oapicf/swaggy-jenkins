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

case class PipelineRunImpl(
  `class`: Option[String],

  links: Option[PipelineRunImpllinks],

  durationInMillis: Option[Int],

  enQueueTime: Option[String],

  endTime: Option[String],

  estimatedDurationInMillis: Option[Int],

  id: Option[String],

  organization: Option[String],

  pipeline: Option[String],

  result: Option[String],

  runSummary: Option[String],

  startTime: Option[String],

  state: Option[String],

  `type`: Option[String],

  commitId: Option[String]

 )
