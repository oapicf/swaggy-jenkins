package org.openapitools.server.model


/**
 * @param artifacts  for example: ''null''
 * @param durationInMillis  for example: ''null''
 * @param estimatedDurationInMillis  for example: ''null''
 * @param enQueueTime  for example: ''null''
 * @param endTime  for example: ''null''
 * @param id  for example: ''null''
 * @param organization  for example: ''null''
 * @param pipeline  for example: ''null''
 * @param result  for example: ''null''
 * @param runSummary  for example: ''null''
 * @param startTime  for example: ''null''
 * @param state  for example: ''null''
 * @param `type`  for example: ''null''
 * @param commitId  for example: ''null''
 * @param `class`  for example: ''null''
*/
final case class PipelinelatestRun (
  artifacts: Option[Seq[PipelinelatestRunartifacts]] = None,
  durationInMillis: Option[Int] = None,
  estimatedDurationInMillis: Option[Int] = None,
  enQueueTime: Option[String] = None,
  endTime: Option[String] = None,
  id: Option[String] = None,
  organization: Option[String] = None,
  pipeline: Option[String] = None,
  result: Option[String] = None,
  runSummary: Option[String] = None,
  startTime: Option[String] = None,
  state: Option[String] = None,
  `type`: Option[String] = None,
  commitId: Option[String] = None,
  `class`: Option[String] = None
)

