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

case class StringParameterDefinition (
  `class`: Option[String] = None,
  defaultParameterValue: Option[StringParameterValue] = None,
  description: Option[String] = None,
  name: Option[String] = None,
  `type`: Option[String] = None
) extends ApiModel

