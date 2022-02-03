package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import BranchImpl._

case class BranchImpl (
  `class`: Option[String],
displayName: Option[String],
estimatedDurationInMillis: Option[Integer],
fullDisplayName: Option[String],
fullName: Option[String],
name: Option[String],
organization: Option[String],
parameters: Option[List[StringParameterDefinition]],
permissions: Option[BranchImplpermissions],
weatherScore: Option[Integer],
pullRequest: Option[String],
links: Option[BranchImpllinks],
latestRun: Option[PipelineRunImpl])

object BranchImpl {
  import DateTimeCodecs._

  implicit val BranchImplCodecJson: CodecJson[BranchImpl] = CodecJson.derive[BranchImpl]
  implicit val BranchImplDecoder: EntityDecoder[BranchImpl] = jsonOf[BranchImpl]
  implicit val BranchImplEncoder: EntityEncoder[BranchImpl] = jsonEncoderOf[BranchImpl]
}
