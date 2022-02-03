package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import GithubRepositories._

case class GithubRepositories (
  `class`: Option[String],
links: Option[GithubRepositorieslinks],
items: Option[List[GithubRepository]],
lastPage: Option[Integer],
nextPage: Option[Integer],
pageSize: Option[Integer])

object GithubRepositories {
  import DateTimeCodecs._

  implicit val GithubRepositoriesCodecJson: CodecJson[GithubRepositories] = CodecJson.derive[GithubRepositories]
  implicit val GithubRepositoriesDecoder: EntityDecoder[GithubRepositories] = jsonOf[GithubRepositories]
  implicit val GithubRepositoriesEncoder: EntityEncoder[GithubRepositories] = jsonEncoderOf[GithubRepositories]
}
