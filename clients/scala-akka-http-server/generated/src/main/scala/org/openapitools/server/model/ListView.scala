package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param description  for example: ''null''
 * @param jobs  for example: ''null''
 * @param name  for example: ''null''
 * @param url  for example: ''null''
*/
final case class ListView (
  `class`: Option[String],
  description: Option[String],
  jobs: Option[Seq[FreeStyleProject]],
  name: Option[String],
  url: Option[String]
)

