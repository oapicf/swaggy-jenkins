package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import GithubOrganizationlinks._

case class GithubOrganizationlinks (
  repositories: Option[Link],
self: Option[Link],
`class`: Option[String])

object GithubOrganizationlinks {
  import DateTimeCodecs._

  implicit val GithubOrganizationlinksCodecJson: CodecJson[GithubOrganizationlinks] = CodecJson.derive[GithubOrganizationlinks]
  implicit val GithubOrganizationlinksDecoder: EntityDecoder[GithubOrganizationlinks] = jsonOf[GithubOrganizationlinks]
  implicit val GithubOrganizationlinksEncoder: EntityEncoder[GithubOrganizationlinks] = jsonEncoderOf[GithubOrganizationlinks]
}
