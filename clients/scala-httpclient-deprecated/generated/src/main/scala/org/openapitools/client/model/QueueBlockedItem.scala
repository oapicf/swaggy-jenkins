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


case class QueueBlockedItem (
  `class`: Option[String] = None,
  actions: Option[List[CauseAction]] = None,
  blocked: Option[Boolean] = None,
  buildable: Option[Boolean] = None,
  id: Option[Integer] = None,
  inQueueSince: Option[Integer] = None,
  params: Option[String] = None,
  stuck: Option[Boolean] = None,
  task: Option[FreeStyleProject] = None,
  url: Option[String] = None,
  why: Option[String] = None,
  buildableStartMilliseconds: Option[Integer] = None
)

