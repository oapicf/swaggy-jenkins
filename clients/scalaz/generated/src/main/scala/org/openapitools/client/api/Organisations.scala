package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import Organisations._

case class Organisations (
  
object Organisations {
  import DateTimeCodecs._

  implicit val OrganisationsCodecJson: CodecJson[Organisations] = CodecJson.derive[Organisations]
  implicit val OrganisationsDecoder: EntityDecoder[Organisations] = jsonOf[Organisations]
  implicit val OrganisationsEncoder: EntityEncoder[Organisations] = jsonEncoderOf[Organisations]
}
