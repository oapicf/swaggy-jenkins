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

case class FreeStyleProjecthealthReport (
  description: Option[String] = None,
  iconClassName: Option[String] = None,
  iconUrl: Option[String] = None,
  score: Option[Int] = None,
  `class`: Option[String] = None
) extends ApiModel

