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

case class PipelineImpl (
                  `class`: Option[String],
                  displayName: Option[String],
                  estimatedDurationInMillis: Option[Int],
                  fullName: Option[String],
                  latestRun: Option[String],
                  name: Option[String],
                  organization: Option[String],
                  weatherScore: Option[Int],
                  links: Option[PipelineImpllinks]
)

object PipelineImpl {
implicit val format: Format[PipelineImpl] = Json.format
}

