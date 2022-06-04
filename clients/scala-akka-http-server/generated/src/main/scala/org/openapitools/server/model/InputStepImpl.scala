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
  `class`: Option[String] = None,
  links: Option[InputStepImpllinks] = None,
  id: Option[String] = None,
  message: Option[String] = None,
  ok: Option[String] = None,
  parameters: Option[Seq[StringParameterDefinition]] = None,
  submitter: Option[String] = None
)

