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

case class PipelineActivityartifacts (
                  name: Option[String],
                  size: Option[Int],
                  url: Option[String],
                  `class`: Option[String]
)

object PipelineActivityartifacts {
implicit val format: Format[PipelineActivityartifacts] = Json.format
}

