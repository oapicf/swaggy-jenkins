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
  `class`: Option[String] = None,
  organization: Option[String] = None,
  name: Option[String] = None,
  displayName: Option[String] = None,
  fullName: Option[String] = None,
  weatherScore: Option[Int] = None,
  estimatedDurationInMillis: Option[Int] = None,
  latestRun: Option[PipelinelatestRun] = None
)

