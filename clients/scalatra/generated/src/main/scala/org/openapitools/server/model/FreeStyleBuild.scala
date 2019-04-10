/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 */

package org.openapitools.server.model

case class FreeStyleBuild(
  Underscoreclass: Option[String],

  number: Option[Int],

  url: Option[String],

  actions: Option[List[CauseAction]],

  building: Option[Boolean],

  description: Option[String],

  displayName: Option[String],

  duration: Option[Int],

  estimatedDuration: Option[Int],

  executor: Option[String],

  fullDisplayName: Option[String],

  id: Option[String],

  keepLog: Option[Boolean],

  queueId: Option[Int],

  result: Option[String],

  timestamp: Option[Int],

  builtOn: Option[String],

  changeSet: Option[EmptyChangeLogSet]

 )
