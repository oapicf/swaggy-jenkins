package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PipelineBranches._

case class PipelineBranches (
  
object PipelineBranches {
  import DateTimeCodecs._

  implicit val PipelineBranchesCodecJson: CodecJson[PipelineBranches] = CodecJson.derive[PipelineBranches]
  implicit val PipelineBranchesDecoder: EntityDecoder[PipelineBranches] = jsonOf[PipelineBranches]
  implicit val PipelineBranchesEncoder: EntityEncoder[PipelineBranches] = jsonEncoderOf[PipelineBranches]
}
