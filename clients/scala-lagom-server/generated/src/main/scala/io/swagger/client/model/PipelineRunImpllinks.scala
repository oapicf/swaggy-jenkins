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

package io.swagger.client.model
import play.api.libs.json._

case class PipelineRunImpllinks (
                  nodes: Option[Link],
                  log: Option[Link],
                  self: Option[Link],
                  actions: Option[Link],
                  steps: Option[Link],
                  `class`: Option[String]
)

object PipelineRunImpllinks {
implicit val format: Format[PipelineRunImpllinks] = Json.format
}

