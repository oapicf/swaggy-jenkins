package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class FreeStyleBuild (
  _class: Option[String],
number: Option[Integer],
url: Option[String],
actions: Option[List[CauseAction]],
building: Option[Boolean],
description: Option[String],
displayName: Option[String],
duration: Option[Integer],
estimatedDuration: Option[Integer],
executor: Option[String],
fullDisplayName: Option[String],
id: Option[String],
keepLog: Option[Boolean],
queueId: Option[Integer],
result: Option[String],
timestamp: Option[Integer],
builtOn: Option[String],
changeSet: Option[EmptyChangeLogSet]
)
