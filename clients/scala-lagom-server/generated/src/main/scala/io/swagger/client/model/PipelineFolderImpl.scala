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

case class PipelineFolderImpl (
                  `class`: Option[String],
                  displayName: Option[String],
                  fullName: Option[String],
                  name: Option[String],
                  organization: Option[String],
                  numberOfFolders: Option[Int],
                  numberOfPipelines: Option[Int]
)

object PipelineFolderImpl {
implicit val format: Format[PipelineFolderImpl] = Json.format
}

