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


case class Pipeline(
  `class`: Option[String] = None,
  organization: Option[String] = None,
  name: Option[String] = None,
  displayName: Option[String] = None,
  fullName: Option[String] = None,
  weatherScore: Option[Int] = None,
  estimatedDurationInMillis: Option[Int] = None,
  latestRun: Option[PipelinelatestRun] = None
)

