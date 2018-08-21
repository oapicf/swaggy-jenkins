package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import QueueLeftItem._

case class QueueLeftItem (
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
cancelled: Option[Boolean],
executable: Option[FreeStyleBuild])

object QueueLeftItem {
  import DateTimeCodecs._

  implicit val QueueLeftItemCodecJson: CodecJson[QueueLeftItem] = CodecJson.derive[QueueLeftItem]
  implicit val QueueLeftItemDecoder: EntityDecoder[QueueLeftItem] = jsonOf[QueueLeftItem]
  implicit val QueueLeftItemEncoder: EntityEncoder[QueueLeftItem] = jsonEncoderOf[QueueLeftItem]
}
