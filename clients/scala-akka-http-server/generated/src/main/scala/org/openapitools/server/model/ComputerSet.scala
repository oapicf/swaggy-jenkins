package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param busyExecutors  for example: ''null''
 * @param computer  for example: ''null''
 * @param displayName  for example: ''null''
 * @param totalExecutors  for example: ''null''
*/
final case class ComputerSet (
  `class`: Option[String],
  busyExecutors: Option[Int],
  computer: Option[Seq[HudsonMasterComputer]],
  displayName: Option[String],
  totalExecutors: Option[Int]
)

