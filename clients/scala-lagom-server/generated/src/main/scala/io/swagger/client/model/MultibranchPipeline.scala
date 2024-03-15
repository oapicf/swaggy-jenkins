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

case class MultibranchPipeline (
                  displayName: Option[String],
                  estimatedDurationInMillis: Option[Int],
                  latestRun: Option[String],
                  name: Option[String],
                  organization: Option[String],
                  weatherScore: Option[Int],
                  branchNames: Option[Seq[String]],
                  numberOfFailingBranches: Option[Int],
                  numberOfFailingPullRequests: Option[Int],
                  numberOfSuccessfulBranches: Option[Int],
                  numberOfSuccessfulPullRequests: Option[Int],
                  totalNumberOfBranches: Option[Int],
                  totalNumberOfPullRequests: Option[Int],
                  `class`: Option[String]
)

object MultibranchPipeline {
implicit val format: Format[MultibranchPipeline] = Json.format
}

