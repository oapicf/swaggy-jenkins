package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QueueBlockedItem._

case class QueueBlockedItem (
  `class`: Option[String],
actions: Option[List[CauseAction]],
blocked: Option[Boolean],
buildable: Option[Boolean],
id: Option[Integer],
inQueueSince: Option[Integer],
params: Option[String],
stuck: Option[Boolean],
task: Option[FreeStyleProject],
url: Option[String],
why: Option[String],
buildableStartMilliseconds: Option[Integer])

object QueueBlockedItem {
  import DateTimeCodecs._

  implicit val QueueBlockedItemCodecJson: CodecJson[QueueBlockedItem] = CodecJson.derive[QueueBlockedItem]
  implicit val QueueBlockedItemDecoder: EntityDecoder[QueueBlockedItem] = jsonOf[QueueBlockedItem]
  implicit val QueueBlockedItemEncoder: EntityEncoder[QueueBlockedItem] = jsonEncoderOf[QueueBlockedItem]
}
