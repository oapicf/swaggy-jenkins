package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import Hudson._

case class Hudson (
  `class`: Option[String],
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
views: Option[List[AllView]])

object Hudson {
  import DateTimeCodecs._

  implicit val HudsonCodecJson: CodecJson[Hudson] = CodecJson.derive[Hudson]
  implicit val HudsonDecoder: EntityDecoder[Hudson] = jsonOf[Hudson]
  implicit val HudsonEncoder: EntityEncoder[Hudson] = jsonEncoderOf[Hudson]
}
