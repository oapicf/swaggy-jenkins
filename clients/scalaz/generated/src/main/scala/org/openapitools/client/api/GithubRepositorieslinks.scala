package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import GithubRepositorieslinks._

case class GithubRepositorieslinks (
  self: Option[Link],
`class`: Option[String])

object GithubRepositorieslinks {
  import DateTimeCodecs._

  implicit val GithubRepositorieslinksCodecJson: CodecJson[GithubRepositorieslinks] = CodecJson.derive[GithubRepositorieslinks]
  implicit val GithubRepositorieslinksDecoder: EntityDecoder[GithubRepositorieslinks] = jsonOf[GithubRepositorieslinks]
  implicit val GithubRepositorieslinksEncoder: EntityEncoder[GithubRepositorieslinks] = jsonEncoderOf[GithubRepositorieslinks]
}
