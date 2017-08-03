package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class HudsonMasterComputerexecutors (
  currentExecutable: Option[FreeStyleBuild],
idle: Option[Boolean],
likelyStuck: Option[Boolean],
number: Option[Integer],
progress: Option[Integer],
_class: Option[String]
)
