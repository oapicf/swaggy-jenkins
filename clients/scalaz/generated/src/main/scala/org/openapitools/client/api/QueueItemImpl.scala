package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import QueueItemImpl._

case class QueueItemImpl (
  `class`: Option[String],
expectedBuildNumber: Option[Integer],
id: Option[String],
pipeline: Option[String],
queuedTime: Option[Integer])

object QueueItemImpl {
  import DateTimeCodecs._

  implicit val QueueItemImplCodecJson: CodecJson[QueueItemImpl] = CodecJson.derive[QueueItemImpl]
  implicit val QueueItemImplDecoder: EntityDecoder[QueueItemImpl] = jsonOf[QueueItemImpl]
  implicit val QueueItemImplEncoder: EntityEncoder[QueueItemImpl] = jsonEncoderOf[QueueItemImpl]
}
