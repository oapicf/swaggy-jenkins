/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package io.swagger.client.model
import play.api.libs.json._

case class PipelineBranchesitempullRequest (
                  links: Option[PipelineBranchesitempullRequestlinks],
                  author: Option[String],
                  id: Option[String],
                  title: Option[String],
                  url: Option[String],
                  `class`: Option[String]
)

object PipelineBranchesitempullRequest {
implicit val format: Format[PipelineBranchesitempullRequest] = Json.format
}

