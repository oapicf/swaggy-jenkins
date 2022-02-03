package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import FreeStyleBuild._

case class FreeStyleBuild (
  `class`: Option[String],
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
changeSet: Option[EmptyChangeLogSet])

object FreeStyleBuild {
  import DateTimeCodecs._

  implicit val FreeStyleBuildCodecJson: CodecJson[FreeStyleBuild] = CodecJson.derive[FreeStyleBuild]
  implicit val FreeStyleBuildDecoder: EntityDecoder[FreeStyleBuild] = jsonOf[FreeStyleBuild]
  implicit val FreeStyleBuildEncoder: EntityEncoder[FreeStyleBuild] = jsonEncoderOf[FreeStyleBuild]
}
