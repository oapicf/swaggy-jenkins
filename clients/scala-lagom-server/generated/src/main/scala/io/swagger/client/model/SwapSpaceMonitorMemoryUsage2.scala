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

case class SwapSpaceMonitorMemoryUsage2 (
                  `class`: Option[String],
                  availablePhysicalMemory: Option[Int],
                  availableSwapSpace: Option[Int],
                  totalPhysicalMemory: Option[Int],
                  totalSwapSpace: Option[Int]
)

object SwapSpaceMonitorMemoryUsage2 {
implicit val format: Format[SwapSpaceMonitorMemoryUsage2] = Json.format
}

