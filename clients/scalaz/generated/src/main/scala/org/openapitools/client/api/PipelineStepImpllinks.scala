package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PipelineStepImpllinks._

case class PipelineStepImpllinks (
  self: Option[Link],
actions: Option[Link],
`class`: Option[String])

object PipelineStepImpllinks {
  import DateTimeCodecs._

  implicit val PipelineStepImpllinksCodecJson: CodecJson[PipelineStepImpllinks] = CodecJson.derive[PipelineStepImpllinks]
  implicit val PipelineStepImpllinksDecoder: EntityDecoder[PipelineStepImpllinks] = jsonOf[PipelineStepImpllinks]
  implicit val PipelineStepImpllinksEncoder: EntityEncoder[PipelineStepImpllinks] = jsonEncoderOf[PipelineStepImpllinks]
}
