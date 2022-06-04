package org.openapitools.server.model


/**
 * @param hudsonNodeMonitorsSwapSpaceMonitor  for example: ''null''
 * @param hudsonNodeMonitorsTemporarySpaceMonitor  for example: ''null''
 * @param hudsonNodeMonitorsDiskSpaceMonitor  for example: ''null''
 * @param hudsonNodeMonitorsArchitectureMonitor  for example: ''null''
 * @param hudsonNodeMonitorsResponseTimeMonitor  for example: ''null''
 * @param hudsonNodeMonitorsClockMonitor  for example: ''null''
 * @param `class`  for example: ''null''
*/
final case class HudsonMasterComputermonitorData (
  hudsonNodeMonitorsSwapSpaceMonitor: Option[SwapSpaceMonitorMemoryUsage2] = None,
  hudsonNodeMonitorsTemporarySpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace] = None,
  hudsonNodeMonitorsDiskSpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace] = None,
  hudsonNodeMonitorsArchitectureMonitor: Option[String] = None,
  hudsonNodeMonitorsResponseTimeMonitor: Option[ResponseTimeMonitorData] = None,
  hudsonNodeMonitorsClockMonitor: Option[ClockDifference] = None,
  `class`: Option[String] = None
)

