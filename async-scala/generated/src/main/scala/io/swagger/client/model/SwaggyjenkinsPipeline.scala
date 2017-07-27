package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class SwaggyjenkinsPipeline (
  _class: Option[String],
organization: Option[String],
name: Option[String],
displayName: Option[String],
fullName: Option[String],
weatherScore: Option[Integer],
estimatedDurationInMillis: Option[Integer],
latestRun: Option[SwaggyjenkinsPipeline_latestRun]
)
