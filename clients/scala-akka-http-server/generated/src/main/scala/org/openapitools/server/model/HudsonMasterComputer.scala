package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param displayName  for example: ''null''
 * @param executors  for example: ''null''
 * @param icon  for example: ''null''
 * @param iconClassName  for example: ''null''
 * @param idle  for example: ''null''
 * @param jnlpAgent  for example: ''null''
 * @param launchSupported  for example: ''null''
 * @param loadStatistics  for example: ''null''
 * @param manualLaunchAllowed  for example: ''null''
 * @param monitorData  for example: ''null''
 * @param numExecutors  for example: ''null''
 * @param offline  for example: ''null''
 * @param offlineCause  for example: ''null''
 * @param offlineCauseReason  for example: ''null''
 * @param temporarilyOffline  for example: ''null''
*/
final case class HudsonMasterComputer (
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

