package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class HudsonmodelHudsonMasterComputerexecutors (
  currentExecutable: Option[HudsonmodelFreeStyleBuild],
idle: Option[Boolean],
likelyStuck: Option[Boolean],
number: Option[Integer],
progress: Option[Integer],
_class: Option[String]
)
