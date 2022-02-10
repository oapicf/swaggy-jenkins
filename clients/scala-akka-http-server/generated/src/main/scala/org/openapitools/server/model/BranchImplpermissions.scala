package org.openapitools.server.model


/**
 * @param create  for example: ''null''
 * @param read  for example: ''null''
 * @param start  for example: ''null''
 * @param stop  for example: ''null''
 * @param `class`  for example: ''null''
*/
final case class BranchImplpermissions (
  create: Option[Boolean],
  read: Option[Boolean],
  start: Option[Boolean],
  stop: Option[Boolean],
  `class`: Option[String]
)

