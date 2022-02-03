package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ListView._

case class ListView (
  `class`: Option[String],
description: Option[String],
jobs: Option[List[FreeStyleProject]],
name: Option[String],
url: Option[String])

object ListView {
  import DateTimeCodecs._

  implicit val ListViewCodecJson: CodecJson[ListView] = CodecJson.derive[ListView]
  implicit val ListViewDecoder: EntityDecoder[ListView] = jsonOf[ListView]
  implicit val ListViewEncoder: EntityEncoder[ListView] = jsonEncoderOf[ListView]
}
