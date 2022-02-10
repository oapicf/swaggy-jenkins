package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param links  for example: ''null''
 * @param displayName  for example: ''null''
 * @param durationInMillis  for example: ''null''
 * @param id  for example: ''null''
 * @param input  for example: ''null''
 * @param result  for example: ''null''
 * @param startTime  for example: ''null''
 * @param state  for example: ''null''
*/
final case class PipelineStepImpl (
  `class`: Option[String],
  links: Option[PipelineStepImpllinks],
  displayName: Option[String],
  durationInMillis: Option[Int],
  id: Option[String],
  input: Option[InputStepImpl],
  result: Option[String],
  startTime: Option[String],
  state: Option[String]
)

