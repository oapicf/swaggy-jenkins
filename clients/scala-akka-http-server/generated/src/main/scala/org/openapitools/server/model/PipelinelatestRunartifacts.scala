package org.openapitools.server.model


/**
 * @param name  for example: ''null''
 * @param size  for example: ''null''
 * @param url  for example: ''null''
 * @param `class`  for example: ''null''
*/
final case class PipelinelatestRunartifacts (
  name: Option[String] = None,
  size: Option[Int] = None,
  url: Option[String] = None,
  `class`: Option[String] = None
)

