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
  hudsonNodeMonitorsSwapSpaceMonitor: Option[SwapSpaceMonitorMemoryUsage2],
  hudsonNodeMonitorsTemporarySpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace],
  hudsonNodeMonitorsDiskSpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace],
  hudsonNodeMonitorsArchitectureMonitor: Option[String],
  hudsonNodeMonitorsResponseTimeMonitor: Option[ResponseTimeMonitorData],
  hudsonNodeMonitorsClockMonitor: Option[ClockDifference],
  `class`: Option[String]
)

