package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param diff  for example: ''null''
*/
final case class ClockDifference (
  `class`: Option[String] = None,
  diff: Option[Int] = None
)

