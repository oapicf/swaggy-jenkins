package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Organisation._

case class Organisation (
  `class`: Option[String],
name: Option[String])

object Organisation {
  import DateTimeCodecs._

  implicit val OrganisationCodecJson: CodecJson[Organisation] = CodecJson.derive[Organisation]
  implicit val OrganisationDecoder: EntityDecoder[Organisation] = jsonOf[Organisation]
  implicit val OrganisationEncoder: EntityEncoder[Organisation] = jsonEncoderOf[Organisation]
}
