package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import BranchImplpermissions._

case class BranchImplpermissions (
  create: Option[Boolean],
read: Option[Boolean],
start: Option[Boolean],
stop: Option[Boolean],
`class`: Option[String])

object BranchImplpermissions {
  import DateTimeCodecs._

  implicit val BranchImplpermissionsCodecJson: CodecJson[BranchImplpermissions] = CodecJson.derive[BranchImplpermissions]
  implicit val BranchImplpermissionsDecoder: EntityDecoder[BranchImplpermissions] = jsonOf[BranchImplpermissions]
  implicit val BranchImplpermissionsEncoder: EntityEncoder[BranchImplpermissions] = jsonEncoderOf[BranchImplpermissions]
}
