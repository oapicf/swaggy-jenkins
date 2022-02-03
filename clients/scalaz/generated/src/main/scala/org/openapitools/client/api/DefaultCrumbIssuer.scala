package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import DefaultCrumbIssuer._

case class DefaultCrumbIssuer (
  `class`: Option[String],
crumb: Option[String],
crumbRequestField: Option[String])

object DefaultCrumbIssuer {
  import DateTimeCodecs._

  implicit val DefaultCrumbIssuerCodecJson: CodecJson[DefaultCrumbIssuer] = CodecJson.derive[DefaultCrumbIssuer]
  implicit val DefaultCrumbIssuerDecoder: EntityDecoder[DefaultCrumbIssuer] = jsonOf[DefaultCrumbIssuer]
  implicit val DefaultCrumbIssuerEncoder: EntityEncoder[DefaultCrumbIssuer] = jsonEncoderOf[DefaultCrumbIssuer]
}
