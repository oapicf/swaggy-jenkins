/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package io.swagger.client.model
import play.api.libs.json._

case class GithubOrganizationlinks (
                  repositories: Option[Link],
                  self: Option[Link],
                  `class`: Option[String]
)

object GithubOrganizationlinks {
implicit val format: Format[GithubOrganizationlinks] = Json.format
}

