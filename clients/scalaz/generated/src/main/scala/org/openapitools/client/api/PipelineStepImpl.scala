package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PipelineStepImpl._

case class PipelineStepImpl (
  `class`: Option[String],
links: Option[PipelineStepImpllinks],
displayName: Option[String],
durationInMillis: Option[Integer],
id: Option[String],
input: Option[InputStepImpl],
result: Option[String],
startTime: Option[String],
state: Option[String])

object PipelineStepImpl {
  import DateTimeCodecs._

  implicit val PipelineStepImplCodecJson: CodecJson[PipelineStepImpl] = CodecJson.derive[PipelineStepImpl]
  implicit val PipelineStepImplDecoder: EntityDecoder[PipelineStepImpl] = jsonOf[PipelineStepImpl]
  implicit val PipelineStepImplEncoder: EntityEncoder[PipelineStepImpl] = jsonEncoderOf[PipelineStepImpl]
}
