package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class Hudson (
  _class: Option[String],
assignedLabels: Option[List[HudsonassignedLabels]],
mode: Option[String],
nodeDescription: Option[String],
nodeName: Option[String],
numExecutors: Option[Integer],
description: Option[String],
jobs: Option[List[FreeStyleProject]],
primaryView: Option[AllView],
quietingDown: Option[Boolean],
slaveAgentPort: Option[Integer],
unlabeledLoad: Option[UnlabeledLoadStatistics],
useCrumbs: Option[Boolean],
useSecurity: Option[Boolean],
views: Option[List[AllView]]
)
