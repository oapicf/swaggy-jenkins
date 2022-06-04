package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param href  for example: ''null''
*/
final case class Link (
  `class`: Option[String] = None,
  href: Option[String] = None
)

