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
package org.openapitools.client.model


case class HudsonMasterComputer(
  `class`: Option[String] = None,
  displayName: Option[String] = None,
  executors: Option[Seq[HudsonMasterComputerexecutors]] = None,
  icon: Option[String] = None,
  iconClassName: Option[String] = None,
  idle: Option[Boolean] = None,
  jnlpAgent: Option[Boolean] = None,
  launchSupported: Option[Boolean] = None,
  loadStatistics: Option[Label1] = None,
  manualLaunchAllowed: Option[Boolean] = None,
  monitorData: Option[HudsonMasterComputermonitorData] = None,
  numExecutors: Option[Int] = None,
  offline: Option[Boolean] = None,
  offlineCause: Option[String] = None,
  offlineCauseReason: Option[String] = None,
  temporarilyOffline: Option[Boolean] = None
)

