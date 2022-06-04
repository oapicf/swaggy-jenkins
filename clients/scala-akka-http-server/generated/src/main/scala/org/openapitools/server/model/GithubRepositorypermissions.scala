package org.openapitools.server.model


/**
 * @param admin  for example: ''null''
 * @param push  for example: ''null''
 * @param pull  for example: ''null''
 * @param `class`  for example: ''null''
*/
final case class GithubRepositorypermissions (
  admin: Option[Boolean] = None,
  push: Option[Boolean] = None,
  pull: Option[Boolean] = None,
  `class`: Option[String] = None
)

