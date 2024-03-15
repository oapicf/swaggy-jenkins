/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package io.swagger.client.model
import play.api.libs.json._

case class QueueLeftItem (
                  `class`: Option[String],
                  actions: Option[Seq[CauseAction]],
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

object QueueLeftItem {
implicit val format: Format[QueueLeftItem] = Json.format
}

