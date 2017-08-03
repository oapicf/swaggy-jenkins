package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class PipelineImpl (
  _class: Option[String],
displayName: Option[String],
estimatedDurationInMillis: Option[Integer],
fullName: Option[String],
latestRun: Option[String],
name: Option[String],
organization: Option[String],
weatherScore: Option[Integer],
_links: Option[PipelineImpllinks]
)
