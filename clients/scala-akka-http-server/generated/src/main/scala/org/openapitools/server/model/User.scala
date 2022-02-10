package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param id  for example: ''null''
 * @param fullName  for example: ''null''
 * @param email  for example: ''null''
 * @param name  for example: ''null''
*/
final case class User (
  `class`: Option[String],
  id: Option[String],
  fullName: Option[String],
  email: Option[String],
  name: Option[String]
)

