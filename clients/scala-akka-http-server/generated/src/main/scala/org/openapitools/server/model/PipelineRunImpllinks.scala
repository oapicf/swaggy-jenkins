package org.openapitools.server.model


/**
 * @param nodes  for example: ''null''
 * @param log  for example: ''null''
 * @param self  for example: ''null''
 * @param actions  for example: ''null''
 * @param steps  for example: ''null''
 * @param `class`  for example: ''null''
*/
final case class PipelineRunImpllinks (
  nodes: Option[Link],
  log: Option[Link],
  self: Option[Link],
  actions: Option[Link],
  steps: Option[Link],
  `class`: Option[String]
)

