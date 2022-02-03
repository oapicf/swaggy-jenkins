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
package org.openapitools.client.model

import org.openapitools.client.core.ApiModel

case class BranchImpl (
  `class`: Option[String] = None,
  displayName: Option[String] = None,
  estimatedDurationInMillis: Option[Int] = None,
  fullDisplayName: Option[String] = None,
  fullName: Option[String] = None,
  name: Option[String] = None,
  organization: Option[String] = None,
  parameters: Option[Seq[StringParameterDefinition]] = None,
  permissions: Option[BranchImplpermissions] = None,
  weatherScore: Option[Int] = None,
  pullRequest: Option[String] = None,
  links: Option[BranchImpllinks] = None,
  latestRun: Option[PipelineRunImpl] = None
) extends ApiModel

