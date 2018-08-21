package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import Pipeline._

case class Pipeline (
  `class`: Option[String],
organization: Option[String],
name: Option[String],
displayName: Option[String],
fullName: Option[String],
weatherScore: Option[Integer],
estimatedDurationInMillis: Option[Integer],
latestRun: Option[PipelinelatestRun])

object Pipeline {
  import DateTimeCodecs._

  implicit val PipelineCodecJson: CodecJson[Pipeline] = CodecJson.derive[Pipeline]
  implicit val PipelineDecoder: EntityDecoder[Pipeline] = jsonOf[Pipeline]
  implicit val PipelineEncoder: EntityEncoder[Pipeline] = jsonEncoderOf[Pipeline]
}
