package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class HudsonmodelListView (
  _class: Option[String],
description: Option[String],
jobs: Option[List[HudsonmodelFreeStyleProject]],
name: Option[String],
url: Option[String]
)
