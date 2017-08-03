package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class Queue (
  _class: Option[String],
items: Option[List[QueueBlockedItem]]
)
