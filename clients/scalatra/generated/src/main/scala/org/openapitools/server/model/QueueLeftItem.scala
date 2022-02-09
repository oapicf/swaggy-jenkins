/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 */

package org.openapitools.server.model

case class QueueLeftItem(
  `class`: Option[String],

  actions: Option[List[CauseAction]],

  blocked: Option[Boolean],

  buildable: Option[Boolean],

  id: Option[Int],

  inQueueSince: Option[Int],

  params: Option[String],

  stuck: Option[Boolean],

  task: Option[FreeStyleProject],

  url: Option[String],

  why: Option[String],

  cancelled: Option[Boolean],

  executable: Option[FreeStyleBuild]

 )
