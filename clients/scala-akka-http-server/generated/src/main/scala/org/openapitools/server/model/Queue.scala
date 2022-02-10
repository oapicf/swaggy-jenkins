package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param items  for example: ''null''
*/
final case class Queue (
  `class`: Option[String],
  items: Option[Seq[QueueBlockedItem]]
)

