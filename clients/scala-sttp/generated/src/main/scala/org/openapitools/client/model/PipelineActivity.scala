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
package org.openapitools.client.model


case class PipelineActivity(
  `class`: Option[String] = None,
  artifacts: Option[Seq[PipelineActivityartifacts]] = None,
  durationInMillis: Option[Int] = None,
  estimatedDurationInMillis: Option[Int] = None,
  enQueueTime: Option[String] = None,
  endTime: Option[String] = None,
  id: Option[String] = None,
  organization: Option[String] = None,
  pipeline: Option[String] = None,
  result: Option[String] = None,
  runSummary: Option[String] = None,
  startTime: Option[String] = None,
  state: Option[String] = None,
  `type`: Option[String] = None,
  commitId: Option[String] = None
)

