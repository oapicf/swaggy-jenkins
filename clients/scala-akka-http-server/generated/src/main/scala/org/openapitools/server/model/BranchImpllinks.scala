package org.openapitools.server.model


/**
 * @param self  for example: ''null''
 * @param actions  for example: ''null''
 * @param runs  for example: ''null''
 * @param queue  for example: ''null''
 * @param `class`  for example: ''null''
*/
final case class BranchImpllinks (
  self: Option[Link],
  actions: Option[Link],
  runs: Option[Link],
  queue: Option[Link],
  `class`: Option[String]
)

