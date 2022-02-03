package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import EmptyChangeLogSet._

case class EmptyChangeLogSet (
  `class`: Option[String],
kind: Option[String])

object EmptyChangeLogSet {
  import DateTimeCodecs._

  implicit val EmptyChangeLogSetCodecJson: CodecJson[EmptyChangeLogSet] = CodecJson.derive[EmptyChangeLogSet]
  implicit val EmptyChangeLogSetDecoder: EntityDecoder[EmptyChangeLogSet] = jsonOf[EmptyChangeLogSet]
  implicit val EmptyChangeLogSetEncoder: EntityEncoder[EmptyChangeLogSet] = jsonEncoderOf[EmptyChangeLogSet]
}
