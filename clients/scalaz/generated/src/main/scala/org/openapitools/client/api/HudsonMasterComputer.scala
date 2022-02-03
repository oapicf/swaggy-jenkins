package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import HudsonMasterComputer._

case class HudsonMasterComputer (
  `class`: Option[String],
displayName: Option[String],
executors: Option[List[HudsonMasterComputerexecutors]],
icon: Option[String],
iconClassName: Option[String],
idle: Option[Boolean],
jnlpAgent: Option[Boolean],
launchSupported: Option[Boolean],
loadStatistics: Option[Label1],
manualLaunchAllowed: Option[Boolean],
monitorData: Option[HudsonMasterComputermonitorData],
numExecutors: Option[Integer],
offline: Option[Boolean],
offlineCause: Option[String],
offlineCauseReason: Option[String],
temporarilyOffline: Option[Boolean])

object HudsonMasterComputer {
  import DateTimeCodecs._

  implicit val HudsonMasterComputerCodecJson: CodecJson[HudsonMasterComputer] = CodecJson.derive[HudsonMasterComputer]
  implicit val HudsonMasterComputerDecoder: EntityDecoder[HudsonMasterComputer] = jsonOf[HudsonMasterComputer]
  implicit val HudsonMasterComputerEncoder: EntityEncoder[HudsonMasterComputer] = jsonEncoderOf[HudsonMasterComputer]
}
