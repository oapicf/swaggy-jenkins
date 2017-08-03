package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class PipelineStepImpl (
  _class: Option[String],
_links: Option[PipelineStepImpllinks],
displayName: Option[String],
durationInMillis: Option[Integer],
id: Option[String],
input: Option[InputStepImpl],
result: Option[String],
startTime: Option[String],
state: Option[String]
)
