package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param availablePhysicalMemory  for example: ''null''
 * @param availableSwapSpace  for example: ''null''
 * @param totalPhysicalMemory  for example: ''null''
 * @param totalSwapSpace  for example: ''null''
*/
final case class SwapSpaceMonitorMemoryUsage2 (
  `class`: Option[String] = None,
  availablePhysicalMemory: Option[Int] = None,
  availableSwapSpace: Option[Int] = None,
  totalPhysicalMemory: Option[Int] = None,
  totalSwapSpace: Option[Int] = None
)

