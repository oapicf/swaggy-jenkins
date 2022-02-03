package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PipelineRunNode._

case class PipelineRunNode (
  `class`: Option[String],
displayName: Option[String],
durationInMillis: Option[Integer],
edges: Option[List[PipelineRunNodeedges]],
id: Option[String],
result: Option[String],
startTime: Option[String],
state: Option[String])

object PipelineRunNode {
  import DateTimeCodecs._

  implicit val PipelineRunNodeCodecJson: CodecJson[PipelineRunNode] = CodecJson.derive[PipelineRunNode]
  implicit val PipelineRunNodeDecoder: EntityDecoder[PipelineRunNode] = jsonOf[PipelineRunNode]
  implicit val PipelineRunNodeEncoder: EntityEncoder[PipelineRunNode] = jsonEncoderOf[PipelineRunNode]
}
