package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param links  for example: ''null''
 * @param id  for example: ''null''
 * @param message  for example: ''null''
 * @param ok  for example: ''null''
 * @param parameters  for example: ''null''
 * @param submitter  for example: ''null''
*/
final case class InputStepImpl (
  `class`: Option[String],
  links: Option[InputStepImpllinks],
  id: Option[String],
  message: Option[String],
  ok: Option[String],
  parameters: Option[Seq[StringParameterDefinition]],
  submitter: Option[String]
)

