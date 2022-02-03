package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import GithubOrganization._

case class GithubOrganization (
  `class`: Option[String],
links: Option[GithubOrganizationlinks],
jenkinsOrganizationPipeline: Option[Boolean],
name: Option[String])

object GithubOrganization {
  import DateTimeCodecs._

  implicit val GithubOrganizationCodecJson: CodecJson[GithubOrganization] = CodecJson.derive[GithubOrganization]
  implicit val GithubOrganizationDecoder: EntityDecoder[GithubOrganization] = jsonOf[GithubOrganization]
  implicit val GithubOrganizationEncoder: EntityEncoder[GithubOrganization] = jsonEncoderOf[GithubOrganization]
}
