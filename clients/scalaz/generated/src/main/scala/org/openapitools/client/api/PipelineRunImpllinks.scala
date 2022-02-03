package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PipelineRunImpllinks._

case class PipelineRunImpllinks (
  nodes: Option[Link],
log: Option[Link],
self: Option[Link],
actions: Option[Link],
steps: Option[Link],
`class`: Option[String])

object PipelineRunImpllinks {
  import DateTimeCodecs._

  implicit val PipelineRunImpllinksCodecJson: CodecJson[PipelineRunImpllinks] = CodecJson.derive[PipelineRunImpllinks]
  implicit val PipelineRunImpllinksDecoder: EntityDecoder[PipelineRunImpllinks] = jsonOf[PipelineRunImpllinks]
  implicit val PipelineRunImpllinksEncoder: EntityEncoder[PipelineRunImpllinks] = jsonEncoderOf[PipelineRunImpllinks]
}
