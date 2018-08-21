package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import GithubScmlinks._

case class GithubScmlinks (
  self: Option[Link],
`class`: Option[String])

object GithubScmlinks {
  import DateTimeCodecs._

  implicit val GithubScmlinksCodecJson: CodecJson[GithubScmlinks] = CodecJson.derive[GithubScmlinks]
  implicit val GithubScmlinksDecoder: EntityDecoder[GithubScmlinks] = jsonOf[GithubScmlinks]
  implicit val GithubScmlinksEncoder: EntityEncoder[GithubScmlinks] = jsonEncoderOf[GithubScmlinks]
}
