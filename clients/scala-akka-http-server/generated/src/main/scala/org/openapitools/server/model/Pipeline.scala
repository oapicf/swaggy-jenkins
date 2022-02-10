package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param organization  for example: ''null''
 * @param name  for example: ''null''
 * @param displayName  for example: ''null''
 * @param fullName  for example: ''null''
 * @param weatherScore  for example: ''null''
 * @param estimatedDurationInMillis  for example: ''null''
 * @param latestRun  for example: ''null''
*/
final case class Pipeline (
  `class`: Option[String],
  organization: Option[String],
  name: Option[String],
  displayName: Option[String],
  fullName: Option[String],
  weatherScore: Option[Int],
  estimatedDurationInMillis: Option[Int],
  latestRun: Option[PipelinelatestRun]
)

