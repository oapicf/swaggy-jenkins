package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import StringParameterValue._

case class StringParameterValue (
  `class`: Option[String],
name: Option[String],
value: Option[String])

object StringParameterValue {
  import DateTimeCodecs._

  implicit val StringParameterValueCodecJson: CodecJson[StringParameterValue] = CodecJson.derive[StringParameterValue]
  implicit val StringParameterValueDecoder: EntityDecoder[StringParameterValue] = jsonOf[StringParameterValue]
  implicit val StringParameterValueEncoder: EntityEncoder[StringParameterValue] = jsonEncoderOf[StringParameterValue]
}
