package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ComputerSet._

case class ComputerSet (
  `class`: Option[String],
busyExecutors: Option[Integer],
computer: Option[List[HudsonMasterComputer]],
displayName: Option[String],
totalExecutors: Option[Integer])

object ComputerSet {
  import DateTimeCodecs._

  implicit val ComputerSetCodecJson: CodecJson[ComputerSet] = CodecJson.derive[ComputerSet]
  implicit val ComputerSetDecoder: EntityDecoder[ComputerSet] = jsonOf[ComputerSet]
  implicit val ComputerSetEncoder: EntityEncoder[ComputerSet] = jsonEncoderOf[ComputerSet]
}
