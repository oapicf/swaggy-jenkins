package org.openapitools.server.model


/**
 * @param self  for example: ''null''
 * @param actions  for example: ''null''
 * @param runs  for example: ''null''
 * @param queue  for example: ''null''
 * @param `class`  for example: ''null''
*/
final case class BranchImpllinks (
  self: Option[Link] = None,
  actions: Option[Link] = None,
  runs: Option[Link] = None,
  queue: Option[Link] = None,
  `class`: Option[String] = None
)

