/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model


case class FreeStyleBuild (
  `class`: Option[String] = None,
  number: Option[Integer] = None,
  url: Option[String] = None,
  actions: Option[List[CauseAction]] = None,
  building: Option[Boolean] = None,
  description: Option[String] = None,
  displayName: Option[String] = None,
  duration: Option[Integer] = None,
  estimatedDuration: Option[Integer] = None,
  executor: Option[String] = None,
  fullDisplayName: Option[String] = None,
  id: Option[String] = None,
  keepLog: Option[Boolean] = None,
  queueId: Option[Integer] = None,
  result: Option[String] = None,
  timestamp: Option[Integer] = None,
  builtOn: Option[String] = None,
  changeSet: Option[EmptyChangeLogSet] = None
)

