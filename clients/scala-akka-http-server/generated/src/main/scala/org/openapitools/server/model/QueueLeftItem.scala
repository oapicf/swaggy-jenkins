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
  `class`: Option[String] = None,
  actions: Option[Seq[CauseAction]] = None,
  blocked: Option[Boolean] = None,
  buildable: Option[Boolean] = None,
  id: Option[Int] = None,
  inQueueSince: Option[Int] = None,
  params: Option[String] = None,
  stuck: Option[Boolean] = None,
  task: Option[FreeStyleProject] = None,
  url: Option[String] = None,
  why: Option[String] = None,
  cancelled: Option[Boolean] = None,
  executable: Option[FreeStyleBuild] = None
)

