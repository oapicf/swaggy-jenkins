package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class PipelineRunImpl (
  _class: Option[String],
_links: Option[PipelineRunImpllinks],
durationInMillis: Option[Integer],
enQueueTime: Option[String],
endTime: Option[String],
estimatedDurationInMillis: Option[Integer],
id: Option[String],
organization: Option[String],
pipeline: Option[String],
result: Option[String],
runSummary: Option[String],
startTime: Option[String],
state: Option[String],
_type: Option[String],
commitId: Option[String]
)
