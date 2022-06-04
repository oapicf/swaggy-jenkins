package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param displayName  for example: ''null''
 * @param fullName  for example: ''null''
 * @param name  for example: ''null''
 * @param organization  for example: ''null''
 * @param numberOfFolders  for example: ''null''
 * @param numberOfPipelines  for example: ''null''
*/
final case class PipelineFolderImpl (
  `class`: Option[String] = None,
  displayName: Option[String] = None,
  fullName: Option[String] = None,
  name: Option[String] = None,
  organization: Option[String] = None,
  numberOfFolders: Option[Int] = None,
  numberOfPipelines: Option[Int] = None
)

