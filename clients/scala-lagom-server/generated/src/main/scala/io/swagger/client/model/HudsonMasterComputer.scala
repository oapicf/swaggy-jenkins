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

case class HudsonMasterComputer (
                  `class`: Option[String],
                  displayName: Option[String],
                  executors: Option[Seq[HudsonMasterComputerexecutors]],
                  icon: Option[String],
                  iconClassName: Option[String],
                  idle: Option[Boolean],
                  jnlpAgent: Option[Boolean],
                  launchSupported: Option[Boolean],
                  loadStatistics: Option[Label1],
                  manualLaunchAllowed: Option[Boolean],
                  monitorData: Option[HudsonMasterComputermonitorData],
                  numExecutors: Option[Int],
                  offline: Option[Boolean],
                  offlineCause: Option[String],
                  offlineCauseReason: Option[String],
                  temporarilyOffline: Option[Boolean]
)

object HudsonMasterComputer {
implicit val format: Format[HudsonMasterComputer] = Json.format
}

