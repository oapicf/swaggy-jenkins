package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param displayName  for example: ''null''
 * @param durationInMillis  for example: ''null''
 * @param id  for example: ''null''
 * @param result  for example: ''null''
 * @param startTime  for example: ''null''
*/
final case class GenericResource (
  `class`: Option[String] = None,
  displayName: Option[String] = None,
  durationInMillis: Option[Int] = None,
  id: Option[String] = None,
  result: Option[String] = None,
  startTime: Option[String] = None
)

