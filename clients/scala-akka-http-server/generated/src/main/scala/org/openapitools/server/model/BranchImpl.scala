package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param displayName  for example: ''null''
 * @param estimatedDurationInMillis  for example: ''null''
 * @param fullDisplayName  for example: ''null''
 * @param fullName  for example: ''null''
 * @param name  for example: ''null''
 * @param organization  for example: ''null''
 * @param parameters  for example: ''null''
 * @param permissions  for example: ''null''
 * @param weatherScore  for example: ''null''
 * @param pullRequest  for example: ''null''
 * @param links  for example: ''null''
 * @param latestRun  for example: ''null''
*/
final case class BranchImpl (
  `class`: Option[String] = None,
  displayName: Option[String] = None,
  estimatedDurationInMillis: Option[Int] = None,
  fullDisplayName: Option[String] = None,
  fullName: Option[String] = None,
  name: Option[String] = None,
  organization: Option[String] = None,
  parameters: Option[Seq[StringParameterDefinition]] = None,
  permissions: Option[BranchImplpermissions] = None,
  weatherScore: Option[Int] = None,
  pullRequest: Option[String] = None,
  links: Option[BranchImpllinks] = None,
  latestRun: Option[PipelineRunImpl] = None
)

