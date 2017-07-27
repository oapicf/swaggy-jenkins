package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class HudsonmodelHudson (
  _class: Option[String],
assignedLabels: Option[List[HudsonmodelHudsonassignedLabels]],
mode: Option[String],
nodeDescription: Option[String],
nodeName: Option[String],
numExecutors: Option[Integer],
description: Option[String],
jobs: Option[List[HudsonmodelFreeStyleProject]],
primaryView: Option[HudsonmodelAllView],
quietingDown: Option[Boolean],
slaveAgentPort: Option[Integer],
unlabeledLoad: Option[JenkinsmodelUnlabeledLoadStatistics],
useCrumbs: Option[Boolean],
useSecurity: Option[Boolean],
views: Option[List[HudsonmodelAllView]]
)
