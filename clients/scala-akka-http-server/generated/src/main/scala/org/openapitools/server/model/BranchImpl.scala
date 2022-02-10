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
  `class`: Option[String],
  displayName: Option[String],
  estimatedDurationInMillis: Option[Int],
  fullDisplayName: Option[String],
  fullName: Option[String],
  name: Option[String],
  organization: Option[String],
  parameters: Option[Seq[StringParameterDefinition]],
  permissions: Option[BranchImplpermissions],
  weatherScore: Option[Int],
  pullRequest: Option[String],
  links: Option[BranchImpllinks],
  latestRun: Option[PipelineRunImpl]
)

