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

case class ComputerSet (
                  `class`: Option[String],
                  busyExecutors: Option[Int],
                  computer: Option[Seq[HudsonMasterComputer]],
                  displayName: Option[String],
                  totalExecutors: Option[Int]
)

object ComputerSet {
implicit val format: Format[ComputerSet] = Json.format
}

