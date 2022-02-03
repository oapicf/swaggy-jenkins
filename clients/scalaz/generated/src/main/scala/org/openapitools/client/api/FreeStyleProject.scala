package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import FreeStyleProject._

case class FreeStyleProject (
  `class`: Option[String],
name: Option[String],
url: Option[String],
color: Option[String],
actions: Option[List[FreeStyleProjectactions]],
description: Option[String],
displayName: Option[String],
displayNameOrNull: Option[String],
fullDisplayName: Option[String],
fullName: Option[String],
buildable: Option[Boolean],
builds: Option[List[FreeStyleBuild]],
firstBuild: Option[FreeStyleBuild],
healthReport: Option[List[FreeStyleProjecthealthReport]],
inQueue: Option[Boolean],
keepDependencies: Option[Boolean],
lastBuild: Option[FreeStyleBuild],
lastCompletedBuild: Option[FreeStyleBuild],
lastFailedBuild: Option[String],
lastStableBuild: Option[FreeStyleBuild],
lastSuccessfulBuild: Option[FreeStyleBuild],
lastUnstableBuild: Option[String],
lastUnsuccessfulBuild: Option[String],
nextBuildNumber: Option[Integer],
queueItem: Option[String],
concurrentBuild: Option[Boolean],
scm: Option[NullSCM])

object FreeStyleProject {
  import DateTimeCodecs._

  implicit val FreeStyleProjectCodecJson: CodecJson[FreeStyleProject] = CodecJson.derive[FreeStyleProject]
  implicit val FreeStyleProjectDecoder: EntityDecoder[FreeStyleProject] = jsonOf[FreeStyleProject]
  implicit val FreeStyleProjectEncoder: EntityEncoder[FreeStyleProject] = jsonEncoderOf[FreeStyleProject]
}
