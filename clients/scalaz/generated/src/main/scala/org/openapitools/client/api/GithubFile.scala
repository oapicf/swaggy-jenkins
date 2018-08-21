package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import GithubFile._

case class GithubFile (
  content: Option[GithubContent],
`class`: Option[String])

object GithubFile {
  import DateTimeCodecs._

  implicit val GithubFileCodecJson: CodecJson[GithubFile] = CodecJson.derive[GithubFile]
  implicit val GithubFileDecoder: EntityDecoder[GithubFile] = jsonOf[GithubFile]
  implicit val GithubFileEncoder: EntityEncoder[GithubFile] = jsonEncoderOf[GithubFile]
}
