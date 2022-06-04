package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param timestamp  for example: ''null''
 * @param average  for example: ''null''
*/
final case class ResponseTimeMonitorData (
  `class`: Option[String] = None,
  timestamp: Option[Int] = None,
  average: Option[Int] = None
)

