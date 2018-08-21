package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import GenericResource._

case class GenericResource (
  `class`: Option[String],
displayName: Option[String],
durationInMillis: Option[Integer],
id: Option[String],
result: Option[String],
startTime: Option[String])

object GenericResource {
  import DateTimeCodecs._

  implicit val GenericResourceCodecJson: CodecJson[GenericResource] = CodecJson.derive[GenericResource]
  implicit val GenericResourceDecoder: EntityDecoder[GenericResource] = jsonOf[GenericResource]
  implicit val GenericResourceEncoder: EntityEncoder[GenericResource] = jsonEncoderOf[GenericResource]
}
