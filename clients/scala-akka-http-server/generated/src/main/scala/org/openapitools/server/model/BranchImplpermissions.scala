package org.openapitools.server.model


/**
 * @param create  for example: ''null''
 * @param read  for example: ''null''
 * @param start  for example: ''null''
 * @param stop  for example: ''null''
 * @param `class`  for example: ''null''
*/
final case class BranchImplpermissions (
  create: Option[Boolean] = None,
  read: Option[Boolean] = None,
  start: Option[Boolean] = None,
  stop: Option[Boolean] = None,
  `class`: Option[String] = None
)

