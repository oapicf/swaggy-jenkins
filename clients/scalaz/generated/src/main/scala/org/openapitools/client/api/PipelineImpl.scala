package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PipelineImpl._

case class PipelineImpl (
  `class`: Option[String],
displayName: Option[String],
estimatedDurationInMillis: Option[Integer],
fullName: Option[String],
latestRun: Option[String],
name: Option[String],
organization: Option[String],
weatherScore: Option[Integer],
links: Option[PipelineImpllinks])

object PipelineImpl {
  import DateTimeCodecs._

  implicit val PipelineImplCodecJson: CodecJson[PipelineImpl] = CodecJson.derive[PipelineImpl]
  implicit val PipelineImplDecoder: EntityDecoder[PipelineImpl] = jsonOf[PipelineImpl]
  implicit val PipelineImplEncoder: EntityEncoder[PipelineImpl] = jsonEncoderOf[PipelineImpl]
}
