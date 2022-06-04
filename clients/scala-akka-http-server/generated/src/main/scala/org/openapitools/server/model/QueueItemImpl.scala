package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param expectedBuildNumber  for example: ''null''
 * @param id  for example: ''null''
 * @param pipeline  for example: ''null''
 * @param queuedTime  for example: ''null''
*/
final case class QueueItemImpl (
  `class`: Option[String] = None,
  expectedBuildNumber: Option[Int] = None,
  id: Option[String] = None,
  pipeline: Option[String] = None,
  queuedTime: Option[Int] = None
)

