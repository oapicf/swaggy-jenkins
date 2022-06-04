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
  `class`: Option[String] = None,
  displayName: Option[String] = None,
  estimatedDurationInMillis: Option[Int] = None,
  fullName: Option[String] = None,
  latestRun: Option[String] = None,
  name: Option[String] = None,
  organization: Option[String] = None,
  weatherScore: Option[Int] = None,
  links: Option[PipelineImpllinks] = None
)

