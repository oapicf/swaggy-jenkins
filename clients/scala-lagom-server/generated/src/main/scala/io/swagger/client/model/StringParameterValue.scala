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

case class StringParameterValue (
                  `class`: Option[String],
                  name: Option[String],
                  value: Option[String]
)

object StringParameterValue {
implicit val format: Format[StringParameterValue] = Json.format
}

