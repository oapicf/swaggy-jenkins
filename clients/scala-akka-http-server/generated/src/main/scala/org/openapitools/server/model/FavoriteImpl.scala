package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param links  for example: ''null''
 * @param item  for example: ''null''
*/
final case class FavoriteImpl (
  `class`: Option[String] = None,
  links: Option[FavoriteImpllinks] = None,
  item: Option[PipelineImpl] = None
)

