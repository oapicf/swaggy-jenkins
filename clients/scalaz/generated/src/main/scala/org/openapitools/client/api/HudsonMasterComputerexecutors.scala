package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import HudsonMasterComputerexecutors._

case class HudsonMasterComputerexecutors (
  currentExecutable: Option[FreeStyleBuild],
idle: Option[Boolean],
likelyStuck: Option[Boolean],
number: Option[Integer],
progress: Option[Integer],
`class`: Option[String])

object HudsonMasterComputerexecutors {
  import DateTimeCodecs._

  implicit val HudsonMasterComputerexecutorsCodecJson: CodecJson[HudsonMasterComputerexecutors] = CodecJson.derive[HudsonMasterComputerexecutors]
  implicit val HudsonMasterComputerexecutorsDecoder: EntityDecoder[HudsonMasterComputerexecutors] = jsonOf[HudsonMasterComputerexecutors]
  implicit val HudsonMasterComputerexecutorsEncoder: EntityEncoder[HudsonMasterComputerexecutors] = jsonEncoderOf[HudsonMasterComputerexecutors]
}
