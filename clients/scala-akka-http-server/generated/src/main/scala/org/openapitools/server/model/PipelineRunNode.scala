package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param displayName  for example: ''null''
 * @param durationInMillis  for example: ''null''
 * @param edges  for example: ''null''
 * @param id  for example: ''null''
 * @param result  for example: ''null''
 * @param startTime  for example: ''null''
 * @param state  for example: ''null''
*/
final case class PipelineRunNode (
  `class`: Option[String],
  displayName: Option[String],
  durationInMillis: Option[Int],
  edges: Option[Seq[PipelineRunNodeedges]],
  id: Option[String],
  result: Option[String],
  startTime: Option[String],
  state: Option[String]
)

