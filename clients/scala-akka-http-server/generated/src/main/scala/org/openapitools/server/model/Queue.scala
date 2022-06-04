package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param items  for example: ''null''
*/
final case class Queue (
  `class`: Option[String] = None,
  items: Option[Seq[QueueBlockedItem]] = None
)

