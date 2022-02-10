package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param displayName  for example: ''null''
 * @param estimatedDurationInMillis  for example: ''null''
 * @param fullName  for example: ''null''
 * @param latestRun  for example: ''null''
 * @param name  for example: ''null''
 * @param organization  for example: ''null''
 * @param weatherScore  for example: ''null''
 * @param links  for example: ''null''
*/
final case class PipelineImpl (
  `class`: Option[String],
  displayName: Option[String],
  estimatedDurationInMillis: Option[Int],
  fullName: Option[String],
  latestRun: Option[String],
  name: Option[String],
  organization: Option[String],
  weatherScore: Option[Int],
  links: Option[PipelineImpllinks]
)

