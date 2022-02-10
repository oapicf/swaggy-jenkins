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
  artifacts: Option[Seq[PipelinelatestRunartifacts]],
  durationInMillis: Option[Int],
  estimatedDurationInMillis: Option[Int],
  enQueueTime: Option[String],
  endTime: Option[String],
  id: Option[String],
  organization: Option[String],
  pipeline: Option[String],
  result: Option[String],
  runSummary: Option[String],
  startTime: Option[String],
  state: Option[String],
  `type`: Option[String],
  commitId: Option[String],
  `class`: Option[String]
)

