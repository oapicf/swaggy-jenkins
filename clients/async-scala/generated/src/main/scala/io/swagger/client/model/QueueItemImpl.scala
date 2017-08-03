package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class QueueItemImpl (
  _class: Option[String],
expectedBuildNumber: Option[Integer],
id: Option[String],
pipeline: Option[String],
queuedTime: Option[Integer]
)
