package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param actions  for example: ''null''
 * @param blocked  for example: ''null''
 * @param buildable  for example: ''null''
 * @param id  for example: ''null''
 * @param inQueueSince  for example: ''null''
 * @param params  for example: ''null''
 * @param stuck  for example: ''null''
 * @param task  for example: ''null''
 * @param url  for example: ''null''
 * @param why  for example: ''null''
 * @param cancelled  for example: ''null''
 * @param executable  for example: ''null''
*/
final case class QueueLeftItem (
  `class`: Option[String],
  actions: Option[Seq[CauseAction]],
  blocked: Option[Boolean],
  buildable: Option[Boolean],
  id: Option[Int],
  inQueueSince: Option[Int],
  params: Option[String],
  stuck: Option[Boolean],
  task: Option[FreeStyleProject],
  url: Option[String],
  why: Option[String],
  cancelled: Option[Boolean],
  executable: Option[FreeStyleBuild]
)

