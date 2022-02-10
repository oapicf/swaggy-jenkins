package org.openapitools.server.model


/**
 * @param currentExecutable  for example: ''null''
 * @param idle  for example: ''null''
 * @param likelyStuck  for example: ''null''
 * @param number  for example: ''null''
 * @param progress  for example: ''null''
 * @param `class`  for example: ''null''
*/
final case class HudsonMasterComputerexecutors (
  currentExecutable: Option[FreeStyleBuild],
  idle: Option[Boolean],
  likelyStuck: Option[Boolean],
  number: Option[Int],
  progress: Option[Int],
  `class`: Option[String]
)

