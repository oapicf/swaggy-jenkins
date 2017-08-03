package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class HudsonMasterComputer (
  _class: Option[String],
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
numExecutors: Option[Integer],
offline: Option[Boolean],
offlineCause: Option[String],
offlineCauseReason: Option[String],
temporarilyOffline: Option[Boolean]
)
