package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import InputStepImpllinks._

case class InputStepImpllinks (
  self: Option[Link],
`class`: Option[String])

object InputStepImpllinks {
  import DateTimeCodecs._

  implicit val InputStepImpllinksCodecJson: CodecJson[InputStepImpllinks] = CodecJson.derive[InputStepImpllinks]
  implicit val InputStepImpllinksDecoder: EntityDecoder[InputStepImpllinks] = jsonOf[InputStepImpllinks]
  implicit val InputStepImpllinksEncoder: EntityEncoder[InputStepImpllinks] = jsonEncoderOf[InputStepImpllinks]
}
