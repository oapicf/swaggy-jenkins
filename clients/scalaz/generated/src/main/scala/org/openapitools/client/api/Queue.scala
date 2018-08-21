package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import Queue._

case class Queue (
  `class`: Option[String],
items: Option[List[QueueBlockedItem]])

object Queue {
  import DateTimeCodecs._

  implicit val QueueCodecJson: CodecJson[Queue] = CodecJson.derive[Queue]
  implicit val QueueDecoder: EntityDecoder[Queue] = jsonOf[Queue]
  implicit val QueueEncoder: EntityEncoder[Queue] = jsonEncoderOf[Queue]
}
