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
  `class`: Option[String] = None,
  links: Option[PipelineStepImpllinks] = None,
  displayName: Option[String] = None,
  durationInMillis: Option[Int] = None,
  id: Option[String] = None,
  input: Option[InputStepImpl] = None,
  result: Option[String] = None,
  startTime: Option[String] = None,
  state: Option[String] = None
)

