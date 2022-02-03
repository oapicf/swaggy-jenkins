/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 */

package org.openapitools.server.model

case class HudsonMasterComputer(
  `class`: Option[String],

  displayName: Option[String],

  executors: Option[List[HudsonMasterComputerexecutors]],

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
