package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import GithubRepositorylinks._

case class GithubRepositorylinks (
  self: Option[Link],
`class`: Option[String])

object GithubRepositorylinks {
  import DateTimeCodecs._

  implicit val GithubRepositorylinksCodecJson: CodecJson[GithubRepositorylinks] = CodecJson.derive[GithubRepositorylinks]
  implicit val GithubRepositorylinksDecoder: EntityDecoder[GithubRepositorylinks] = jsonOf[GithubRepositorylinks]
  implicit val GithubRepositorylinksEncoder: EntityEncoder[GithubRepositorylinks] = jsonEncoderOf[GithubRepositorylinks]
}
