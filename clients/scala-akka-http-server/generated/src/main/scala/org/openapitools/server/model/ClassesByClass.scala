package org.openapitools.server.model


/**
 * @param classes  for example: ''null''
 * @param `class`  for example: ''null''
*/
final case class ClassesByClass (
  classes: Option[Seq[String]] = None,
  `class`: Option[String] = None
)

