package org.openapitools.server.model


/**
 * @param runs  for example: ''null''
 * @param self  for example: ''null''
 * @param queue  for example: ''null''
 * @param actions  for example: ''null''
 * @param `class`  for example: ''null''
*/
final case class PipelineImpllinks (
  runs: Option[Link] = None,
  self: Option[Link] = None,
  queue: Option[Link] = None,
  actions: Option[Link] = None,
  `class`: Option[String] = None
)

