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

case class GenericResource (
  `class`: Option[String] = None,
  displayName: Option[String] = None,
  durationInMillis: Option[Int] = None,
  id: Option[String] = None,
  result: Option[String] = None,
  startTime: Option[String] = None
) extends ApiModel

