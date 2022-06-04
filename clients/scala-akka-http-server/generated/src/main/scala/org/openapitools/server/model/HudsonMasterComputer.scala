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

