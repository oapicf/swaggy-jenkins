package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class HudsonmodelComputerSet (
  _class: Option[String],
busyExecutors: Option[Integer],
computer: Option[List[HudsonmodelHudsonMasterComputer]],
displayName: Option[String],
totalExecutors: Option[Integer]
)
