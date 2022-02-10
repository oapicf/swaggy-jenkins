
package org.openapitools.client.model


case class HudsonMasterComputermonitorData (
    _hudsonNodeMonitorsSwapSpaceMonitor: Option[SwapSpaceMonitorMemoryUsage2],
    _hudsonNodeMonitorsTemporarySpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace],
    _hudsonNodeMonitorsDiskSpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace],
    _hudsonNodeMonitorsArchitectureMonitor: Option[String],
    _hudsonNodeMonitorsResponseTimeMonitor: Option[ResponseTimeMonitorData],
    _hudsonNodeMonitorsClockMonitor: Option[ClockDifference],
    _class: Option[String]
)
object HudsonMasterComputermonitorData {
    def toStringBody(var_hudsonNodeMonitorsSwapSpaceMonitor: Object, var_hudsonNodeMonitorsTemporarySpaceMonitor: Object, var_hudsonNodeMonitorsDiskSpaceMonitor: Object, var_hudsonNodeMonitorsArchitectureMonitor: Object, var_hudsonNodeMonitorsResponseTimeMonitor: Object, var_hudsonNodeMonitorsClockMonitor: Object, var_class: Object) =
        s"""
        | {
        | "hudsonNodeMonitorsSwapSpaceMonitor":$var_hudsonNodeMonitorsSwapSpaceMonitor,"hudsonNodeMonitorsTemporarySpaceMonitor":$var_hudsonNodeMonitorsTemporarySpaceMonitor,"hudsonNodeMonitorsDiskSpaceMonitor":$var_hudsonNodeMonitorsDiskSpaceMonitor,"hudsonNodeMonitorsArchitectureMonitor":$var_hudsonNodeMonitorsArchitectureMonitor,"hudsonNodeMonitorsResponseTimeMonitor":$var_hudsonNodeMonitorsResponseTimeMonitor,"hudsonNodeMonitorsClockMonitor":$var_hudsonNodeMonitorsClockMonitor,"class":$var_class
        | }
        """.stripMargin
}
