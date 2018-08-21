package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PipelineActivities._

case class PipelineActivities (
  
object PipelineActivities {
  import DateTimeCodecs._

  implicit val PipelineActivitiesCodecJson: CodecJson[PipelineActivities] = CodecJson.derive[PipelineActivities]
  implicit val PipelineActivitiesDecoder: EntityDecoder[PipelineActivities] = jsonOf[PipelineActivities]
  implicit val PipelineActivitiesEncoder: EntityEncoder[PipelineActivities] = jsonEncoderOf[PipelineActivities]
}
