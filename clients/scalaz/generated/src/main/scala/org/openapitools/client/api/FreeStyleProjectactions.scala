package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import FreeStyleProjectactions._

case class FreeStyleProjectactions (
  `class`: Option[String])

object FreeStyleProjectactions {
  import DateTimeCodecs._

  implicit val FreeStyleProjectactionsCodecJson: CodecJson[FreeStyleProjectactions] = CodecJson.derive[FreeStyleProjectactions]
  implicit val FreeStyleProjectactionsDecoder: EntityDecoder[FreeStyleProjectactions] = jsonOf[FreeStyleProjectactions]
  implicit val FreeStyleProjectactionsEncoder: EntityEncoder[FreeStyleProjectactions] = jsonEncoderOf[FreeStyleProjectactions]
}
