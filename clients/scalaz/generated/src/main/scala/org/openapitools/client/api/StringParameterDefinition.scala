package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import StringParameterDefinition._

case class StringParameterDefinition (
  `class`: Option[String],
defaultParameterValue: Option[StringParameterValue],
description: Option[String],
name: Option[String],
`type`: Option[String])

object StringParameterDefinition {
  import DateTimeCodecs._

  implicit val StringParameterDefinitionCodecJson: CodecJson[StringParameterDefinition] = CodecJson.derive[StringParameterDefinition]
  implicit val StringParameterDefinitionDecoder: EntityDecoder[StringParameterDefinition] = jsonOf[StringParameterDefinition]
  implicit val StringParameterDefinitionEncoder: EntityEncoder[StringParameterDefinition] = jsonEncoderOf[StringParameterDefinition]
}
