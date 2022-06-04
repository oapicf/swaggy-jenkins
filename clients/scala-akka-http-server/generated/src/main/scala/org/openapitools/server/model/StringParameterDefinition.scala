package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param defaultParameterValue  for example: ''null''
 * @param description  for example: ''null''
 * @param name  for example: ''null''
 * @param `type`  for example: ''null''
*/
final case class StringParameterDefinition (
  `class`: Option[String] = None,
  defaultParameterValue: Option[StringParameterValue] = None,
  description: Option[String] = None,
  name: Option[String] = None,
  `type`: Option[String] = None
)

