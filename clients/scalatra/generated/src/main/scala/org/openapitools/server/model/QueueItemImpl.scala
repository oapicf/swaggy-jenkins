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

case class QueueItemImpl(
  Underscoreclass: Option[String],

  expectedBuildNumber: Option[Int],

  id: Option[String],

  pipeline: Option[String],

  queuedTime: Option[Int]

 )
