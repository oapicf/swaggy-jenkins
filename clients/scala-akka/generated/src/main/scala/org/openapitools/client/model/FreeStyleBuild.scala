/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package org.openapitools.client.model

import org.openapitools.client.core.ApiModel

case class FreeStyleBuild (
  `class`: Option[String] = None,
  number: Option[Int] = None,
  url: Option[String] = None,
  actions: Option[Seq[CauseAction]] = None,
  building: Option[Boolean] = None,
  description: Option[String] = None,
  displayName: Option[String] = None,
  duration: Option[Int] = None,
  estimatedDuration: Option[Int] = None,
  executor: Option[String] = None,
  fullDisplayName: Option[String] = None,
  id: Option[String] = None,
  keepLog: Option[Boolean] = None,
  queueId: Option[Int] = None,
  result: Option[String] = None,
  timestamp: Option[Int] = None,
  builtOn: Option[String] = None,
  changeSet: Option[EmptyChangeLogSet] = None
) extends ApiModel

