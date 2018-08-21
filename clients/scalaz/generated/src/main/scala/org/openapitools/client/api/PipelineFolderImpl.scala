package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PipelineFolderImpl._

case class PipelineFolderImpl (
  `class`: Option[String],
displayName: Option[String],
fullName: Option[String],
name: Option[String],
organization: Option[String],
numberOfFolders: Option[Integer],
numberOfPipelines: Option[Integer])

object PipelineFolderImpl {
  import DateTimeCodecs._

  implicit val PipelineFolderImplCodecJson: CodecJson[PipelineFolderImpl] = CodecJson.derive[PipelineFolderImpl]
  implicit val PipelineFolderImplDecoder: EntityDecoder[PipelineFolderImpl] = jsonOf[PipelineFolderImpl]
  implicit val PipelineFolderImplEncoder: EntityEncoder[PipelineFolderImpl] = jsonEncoderOf[PipelineFolderImpl]
}
