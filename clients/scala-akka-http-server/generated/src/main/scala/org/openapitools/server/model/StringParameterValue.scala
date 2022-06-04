package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param name  for example: ''null''
 * @param value  for example: ''null''
*/
final case class StringParameterValue (
  `class`: Option[String] = None,
  name: Option[String] = None,
  value: Option[String] = None
)

