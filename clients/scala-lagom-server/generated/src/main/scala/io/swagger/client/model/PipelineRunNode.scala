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

package io.swagger.client.model
import play.api.libs.json._

case class PipelineRunNode (
                  `class`: Option[String],
                  displayName: Option[String],
                  durationInMillis: Option[Int],
                  edges: Option[Seq[PipelineRunNodeedges]],
                  id: Option[String],
                  result: Option[String],
                  startTime: Option[String],
                  state: Option[String]
)

object PipelineRunNode {
implicit val format: Format[PipelineRunNode] = Json.format
}

