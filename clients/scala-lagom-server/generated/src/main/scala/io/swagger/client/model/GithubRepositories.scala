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

case class GithubRepositories (
                  `class`: Option[String],
                  links: Option[GithubRepositorieslinks],
                  items: Option[Seq[GithubRepository]],
                  lastPage: Option[Int],
                  nextPage: Option[Int],
                  pageSize: Option[Int]
)

object GithubRepositories {
implicit val format: Format[GithubRepositories] = Json.format
}

