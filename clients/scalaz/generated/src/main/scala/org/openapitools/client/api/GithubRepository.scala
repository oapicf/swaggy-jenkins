package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import GithubRepository._

case class GithubRepository (
  `class`: Option[String],
links: Option[GithubRepositorylinks],
defaultBranch: Option[String],
description: Option[String],
name: Option[String],
permissions: Option[GithubRepositorypermissions],
`private`: Option[Boolean],
fullName: Option[String])

object GithubRepository {
  import DateTimeCodecs._

  implicit val GithubRepositoryCodecJson: CodecJson[GithubRepository] = CodecJson.derive[GithubRepository]
  implicit val GithubRepositoryDecoder: EntityDecoder[GithubRepository] = jsonOf[GithubRepository]
  implicit val GithubRepositoryEncoder: EntityEncoder[GithubRepository] = jsonEncoderOf[GithubRepository]
}
