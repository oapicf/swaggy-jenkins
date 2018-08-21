package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ClassesByClass._

case class ClassesByClass (
  classes: Option[List[String]],
`class`: Option[String])

object ClassesByClass {
  import DateTimeCodecs._

  implicit val ClassesByClassCodecJson: CodecJson[ClassesByClass] = CodecJson.derive[ClassesByClass]
  implicit val ClassesByClassDecoder: EntityDecoder[ClassesByClass] = jsonOf[ClassesByClass]
  implicit val ClassesByClassEncoder: EntityEncoder[ClassesByClass] = jsonEncoderOf[ClassesByClass]
}
