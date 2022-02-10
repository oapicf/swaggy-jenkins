package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param availablePhysicalMemory  for example: ''null''
 * @param availableSwapSpace  for example: ''null''
 * @param totalPhysicalMemory  for example: ''null''
 * @param totalSwapSpace  for example: ''null''
*/
final case class SwapSpaceMonitorMemoryUsage2 (
  `class`: Option[String],
  availablePhysicalMemory: Option[Int],
  availableSwapSpace: Option[Int],
  totalPhysicalMemory: Option[Int],
  totalSwapSpace: Option[Int]
)

