package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import GithubScm._

case class GithubScm (
  `class`: Option[String],
links: Option[GithubScmlinks],
credentialId: Option[String],
id: Option[String],
uri: Option[String])

object GithubScm {
  import DateTimeCodecs._

  implicit val GithubScmCodecJson: CodecJson[GithubScm] = CodecJson.derive[GithubScm]
  implicit val GithubScmDecoder: EntityDecoder[GithubScm] = jsonOf[GithubScm]
  implicit val GithubScmEncoder: EntityEncoder[GithubScm] = jsonEncoderOf[GithubScm]
}
