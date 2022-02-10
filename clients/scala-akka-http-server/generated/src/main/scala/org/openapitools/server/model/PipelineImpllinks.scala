package org.openapitools.server.model


/**
 * @param runs  for example: ''null''
 * @param self  for example: ''null''
 * @param queue  for example: ''null''
 * @param actions  for example: ''null''
 * @param `class`  for example: ''null''
*/
final case class PipelineImpllinks (
  runs: Option[Link],
  self: Option[Link],
  queue: Option[Link],
  actions: Option[Link],
  `class`: Option[String]
)

