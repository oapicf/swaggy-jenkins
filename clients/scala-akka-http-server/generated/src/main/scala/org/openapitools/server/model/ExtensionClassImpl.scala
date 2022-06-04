package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param links  for example: ''null''
 * @param classes  for example: ''null''
*/
final case class ExtensionClassImpl (
  `class`: Option[String] = None,
  links: Option[ExtensionClassImpllinks] = None,
  classes: Option[Seq[String]] = None
)

