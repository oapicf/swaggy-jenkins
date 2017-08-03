package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class QueueLeftItem (
  _class: Option[String],
actions: Option[List[CauseAction]],
blocked: Option[Boolean],
buildable: Option[Boolean],
id: Option[Integer],
inQueueSince: Option[Integer],
params: Option[String],
stuck: Option[Boolean],
task: Option[FreeStyleProject],
url: Option[String],
why: Option[String],
cancelled: Option[Boolean],
executable: Option[FreeStyleBuild]
)
