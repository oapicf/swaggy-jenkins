package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import GithubContent._

case class GithubContent (
  name: Option[String],
sha: Option[String],
`class`: Option[String],
repo: Option[String],
size: Option[Integer],
owner: Option[String],
`path`: Option[String],
base64Data: Option[String])

object GithubContent {
  import DateTimeCodecs._

  implicit val GithubContentCodecJson: CodecJson[GithubContent] = CodecJson.derive[GithubContent]
  implicit val GithubContentDecoder: EntityDecoder[GithubContent] = jsonOf[GithubContent]
  implicit val GithubContentEncoder: EntityEncoder[GithubContent] = jsonEncoderOf[GithubContent]
}
