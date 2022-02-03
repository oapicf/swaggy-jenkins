package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import FreeStyleProjecthealthReport._

case class FreeStyleProjecthealthReport (
  description: Option[String],
iconClassName: Option[String],
iconUrl: Option[String],
score: Option[Integer],
`class`: Option[String])

object FreeStyleProjecthealthReport {
  import DateTimeCodecs._

  implicit val FreeStyleProjecthealthReportCodecJson: CodecJson[FreeStyleProjecthealthReport] = CodecJson.derive[FreeStyleProjecthealthReport]
  implicit val FreeStyleProjecthealthReportDecoder: EntityDecoder[FreeStyleProjecthealthReport] = jsonOf[FreeStyleProjecthealthReport]
  implicit val FreeStyleProjecthealthReportEncoder: EntityEncoder[FreeStyleProjecthealthReport] = jsonEncoderOf[FreeStyleProjecthealthReport]
}
