package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class HudsonmodelQueueLeftItem (
  _class: Option[String],
actions: Option[List[HudsonmodelCauseAction]],
blocked: Option[Boolean],
buildable: Option[Boolean],
id: Option[Integer],
inQueueSince: Option[Integer],
params: Option[String],
stuck: Option[Boolean],
task: Option[HudsonmodelFreeStyleProject],
url: Option[String],
why: Option[String],
cancelled: Option[Boolean],
executable: Option[HudsonmodelFreeStyleBuild]
)
