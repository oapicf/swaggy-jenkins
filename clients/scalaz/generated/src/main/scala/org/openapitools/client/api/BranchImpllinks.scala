package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import BranchImpllinks._

case class BranchImpllinks (
  self: Option[Link],
actions: Option[Link],
runs: Option[Link],
queue: Option[Link],
`class`: Option[String])

object BranchImpllinks {
  import DateTimeCodecs._

  implicit val BranchImpllinksCodecJson: CodecJson[BranchImpllinks] = CodecJson.derive[BranchImpllinks]
  implicit val BranchImpllinksDecoder: EntityDecoder[BranchImpllinks] = jsonOf[BranchImpllinks]
  implicit val BranchImpllinksEncoder: EntityEncoder[BranchImpllinks] = jsonEncoderOf[BranchImpllinks]
}
