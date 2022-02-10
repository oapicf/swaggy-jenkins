package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param expectedBuildNumber  for example: ''null''
 * @param id  for example: ''null''
 * @param pipeline  for example: ''null''
 * @param queuedTime  for example: ''null''
*/
final case class QueueItemImpl (
  `class`: Option[String],
  expectedBuildNumber: Option[Int],
  id: Option[String],
  pipeline: Option[String],
  queuedTime: Option[Int]
)

