package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import GithubRepositorypermissions._

case class GithubRepositorypermissions (
  admin: Option[Boolean],
push: Option[Boolean],
pull: Option[Boolean],
`class`: Option[String])

object GithubRepositorypermissions {
  import DateTimeCodecs._

  implicit val GithubRepositorypermissionsCodecJson: CodecJson[GithubRepositorypermissions] = CodecJson.derive[GithubRepositorypermissions]
  implicit val GithubRepositorypermissionsDecoder: EntityDecoder[GithubRepositorypermissions] = jsonOf[GithubRepositorypermissions]
  implicit val GithubRepositorypermissionsEncoder: EntityEncoder[GithubRepositorypermissions] = jsonEncoderOf[GithubRepositorypermissions]
}
