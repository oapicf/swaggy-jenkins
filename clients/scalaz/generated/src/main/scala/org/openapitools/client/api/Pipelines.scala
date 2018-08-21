package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import Pipelines._

case class Pipelines (
  
object Pipelines {
  import DateTimeCodecs._

  implicit val PipelinesCodecJson: CodecJson[Pipelines] = CodecJson.derive[Pipelines]
  implicit val PipelinesDecoder: EntityDecoder[Pipelines] = jsonOf[Pipelines]
  implicit val PipelinesEncoder: EntityEncoder[Pipelines] = jsonEncoderOf[Pipelines]
}
