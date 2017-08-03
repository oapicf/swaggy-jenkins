package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class PipelineRunNode (
  _class: Option[String],
displayName: Option[String],
durationInMillis: Option[Integer],
edges: Option[List[PipelineRunNodeedges]],
id: Option[String],
result: Option[String],
startTime: Option[String],
state: Option[String]
)
