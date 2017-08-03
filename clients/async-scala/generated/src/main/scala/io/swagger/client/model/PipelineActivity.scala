package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class PipelineActivity (
  _class: Option[String],
artifacts: Option[List[PipelineActivityartifacts]],
durationInMillis: Option[Integer],
estimatedDurationInMillis: Option[Integer],
enQueueTime: Option[String],
endTime: Option[String],
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
