package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import GithubRespositoryContainer._

case class GithubRespositoryContainer (
  `class`: Option[String],
links: Option[GithubRespositoryContainerlinks],
repositories: Option[GithubRepositories])

object GithubRespositoryContainer {
  import DateTimeCodecs._

  implicit val GithubRespositoryContainerCodecJson: CodecJson[GithubRespositoryContainer] = CodecJson.derive[GithubRespositoryContainer]
  implicit val GithubRespositoryContainerDecoder: EntityDecoder[GithubRespositoryContainer] = jsonOf[GithubRespositoryContainer]
  implicit val GithubRespositoryContainerEncoder: EntityEncoder[GithubRespositoryContainer] = jsonEncoderOf[GithubRespositoryContainer]
}
