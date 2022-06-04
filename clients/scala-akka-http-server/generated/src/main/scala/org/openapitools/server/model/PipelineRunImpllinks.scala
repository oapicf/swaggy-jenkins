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
  nodes: Option[Link] = None,
  log: Option[Link] = None,
  self: Option[Link] = None,
  actions: Option[Link] = None,
  steps: Option[Link] = None,
  `class`: Option[String] = None
)

