package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class ComputerSet (
  _class: Option[String],
busyExecutors: Option[Integer],
computer: Option[List[HudsonMasterComputer]],
displayName: Option[String],
totalExecutors: Option[Integer]
)
