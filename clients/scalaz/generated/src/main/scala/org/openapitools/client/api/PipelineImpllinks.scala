package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PipelineImpllinks._

case class PipelineImpllinks (
  runs: Option[Link],
self: Option[Link],
queue: Option[Link],
actions: Option[Link],
`class`: Option[String])

object PipelineImpllinks {
  import DateTimeCodecs._

  implicit val PipelineImpllinksCodecJson: CodecJson[PipelineImpllinks] = CodecJson.derive[PipelineImpllinks]
  implicit val PipelineImpllinksDecoder: EntityDecoder[PipelineImpllinks] = jsonOf[PipelineImpllinks]
  implicit val PipelineImpllinksEncoder: EntityEncoder[PipelineImpllinks] = jsonEncoderOf[PipelineImpllinks]
}
