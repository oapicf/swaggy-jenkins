package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param busyExecutors  for example: ''null''
 * @param computer  for example: ''null''
 * @param displayName  for example: ''null''
 * @param totalExecutors  for example: ''null''
*/
final case class ComputerSet (
  `class`: Option[String] = None,
  busyExecutors: Option[Int] = None,
  computer: Option[Seq[HudsonMasterComputer]] = None,
  displayName: Option[String] = None,
  totalExecutors: Option[Int] = None
)

