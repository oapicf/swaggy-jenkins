package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import InputStepImpl._

case class InputStepImpl (
  `class`: Option[String],
links: Option[InputStepImpllinks],
id: Option[String],
message: Option[String],
ok: Option[String],
parameters: Option[List[StringParameterDefinition]],
submitter: Option[String])

object InputStepImpl {
  import DateTimeCodecs._

  implicit val InputStepImplCodecJson: CodecJson[InputStepImpl] = CodecJson.derive[InputStepImpl]
  implicit val InputStepImplDecoder: EntityDecoder[InputStepImpl] = jsonOf[InputStepImpl]
  implicit val InputStepImplEncoder: EntityEncoder[InputStepImpl] = jsonEncoderOf[InputStepImpl]
}
