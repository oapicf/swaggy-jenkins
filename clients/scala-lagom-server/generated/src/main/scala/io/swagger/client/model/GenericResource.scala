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

case class GenericResource (
                  `class`: Option[String],
                  displayName: Option[String],
                  durationInMillis: Option[Int],
                  id: Option[String],
                  result: Option[String],
                  startTime: Option[String]
)

object GenericResource {
implicit val format: Format[GenericResource] = Json.format
}

