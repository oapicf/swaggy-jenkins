package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param causes  for example: ''null''
*/
final case class CauseAction (
  `class`: Option[String],
  causes: Option[Seq[CauseUserIdCause]]
)

