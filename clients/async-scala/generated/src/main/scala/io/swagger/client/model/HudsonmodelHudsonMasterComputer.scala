package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class HudsonmodelHudsonMasterComputer (
  _class: Option[String],
displayName: Option[String],
executors: Option[List[HudsonmodelHudsonMasterComputerexecutors]],
icon: Option[String],
iconClassName: Option[String],
idle: Option[Boolean],
jnlpAgent: Option[Boolean],
launchSupported: Option[Boolean],
loadStatistics: Option[HudsonmodelLabel1],
manualLaunchAllowed: Option[Boolean],
monitorData: Option[HudsonmodelHudsonMasterComputer_monitorData],
numExecutors: Option[Integer],
offline: Option[Boolean],
offlineCause: Option[String],
offlineCauseReason: Option[String],
temporarilyOffline: Option[Boolean]
)
