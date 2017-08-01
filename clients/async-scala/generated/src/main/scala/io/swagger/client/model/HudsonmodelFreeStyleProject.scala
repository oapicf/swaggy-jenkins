package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class HudsonmodelFreeStyleProject (
  _class: Option[String],
name: Option[String],
url: Option[String],
color: Option[String],
actions: Option[List[HudsonmodelFreeStyleProjectactions]],
description: Option[String],
displayName: Option[String],
displayNameOrNull: Option[String],
fullDisplayName: Option[String],
fullName: Option[String],
buildable: Option[Boolean],
builds: Option[List[HudsonmodelFreeStyleBuild]],
firstBuild: Option[HudsonmodelFreeStyleBuild],
healthReport: Option[List[HudsonmodelFreeStyleProjecthealthReport]],
inQueue: Option[Boolean],
keepDependencies: Option[Boolean],
lastBuild: Option[HudsonmodelFreeStyleBuild],
lastCompletedBuild: Option[HudsonmodelFreeStyleBuild],
lastFailedBuild: Option[String],
lastStableBuild: Option[HudsonmodelFreeStyleBuild],
lastSuccessfulBuild: Option[HudsonmodelFreeStyleBuild],
lastUnstableBuild: Option[String],
lastUnsuccessfulBuild: Option[String],
nextBuildNumber: Option[Integer],
queueItem: Option[String],
concurrentBuild: Option[Boolean],
scm: Option[HudsonscmNullSCM]
)
