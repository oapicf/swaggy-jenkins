package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import GithubRespositoryContainerlinks._

case class GithubRespositoryContainerlinks (
  self: Option[Link],
`class`: Option[String])

object GithubRespositoryContainerlinks {
  import DateTimeCodecs._

  implicit val GithubRespositoryContainerlinksCodecJson: CodecJson[GithubRespositoryContainerlinks] = CodecJson.derive[GithubRespositoryContainerlinks]
  implicit val GithubRespositoryContainerlinksDecoder: EntityDecoder[GithubRespositoryContainerlinks] = jsonOf[GithubRespositoryContainerlinks]
  implicit val GithubRespositoryContainerlinksEncoder: EntityEncoder[GithubRespositoryContainerlinks] = jsonEncoderOf[GithubRespositoryContainerlinks]
}
