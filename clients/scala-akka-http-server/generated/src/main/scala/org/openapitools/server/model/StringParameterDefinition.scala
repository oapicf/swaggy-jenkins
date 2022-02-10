package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param defaultParameterValue  for example: ''null''
 * @param description  for example: ''null''
 * @param name  for example: ''null''
 * @param `type`  for example: ''null''
*/
final case class StringParameterDefinition (
  `class`: Option[String],
  defaultParameterValue: Option[StringParameterValue],
  description: Option[String],
  name: Option[String],
  `type`: Option[String]
)

