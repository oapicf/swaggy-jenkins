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
  currentExecutable: Option[FreeStyleBuild] = None,
  idle: Option[Boolean] = None,
  likelyStuck: Option[Boolean] = None,
  number: Option[Int] = None,
  progress: Option[Int] = None,
  `class`: Option[String] = None
)

