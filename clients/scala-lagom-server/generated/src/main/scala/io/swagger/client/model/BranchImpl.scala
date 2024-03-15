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

case class BranchImpl (
                  `class`: Option[String],
                  displayName: Option[String],
                  estimatedDurationInMillis: Option[Int],
                  fullDisplayName: Option[String],
                  fullName: Option[String],
                  name: Option[String],
                  organization: Option[String],
                  parameters: Option[Seq[StringParameterDefinition]],
                  permissions: Option[BranchImplpermissions],
                  weatherScore: Option[Int],
                  pullRequest: Option[String],
                  links: Option[BranchImpllinks],
                  latestRun: Option[PipelineRunImpl]
)

object BranchImpl {
implicit val format: Format[BranchImpl] = Json.format
}

