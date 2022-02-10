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
  `class`: Option[String],
  displayName: Option[String],
  fullName: Option[String],
  name: Option[String],
  organization: Option[String],
  numberOfFolders: Option[Int],
  numberOfPipelines: Option[Int]
)

