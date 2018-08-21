goog.provide('API.Client.HudsonMasterComputermonitorData');

/**
 * @record
 */
API.Client.HudsonMasterComputermonitorData = function() {}

/**
 * @type {!API.Client.SwapSpaceMonitorMemoryUsage2}
 * @export
 */
API.Client.HudsonMasterComputermonitorData.prototype.hudsonNodeMonitorsSwapSpaceMonitor;

/**
 * @type {!API.Client.DiskSpaceMonitorDescriptorDiskSpace}
 * @export
 */
API.Client.HudsonMasterComputermonitorData.prototype.hudsonNodeMonitorsTemporarySpaceMonitor;

/**
 * @type {!API.Client.DiskSpaceMonitorDescriptorDiskSpace}
 * @export
 */
API.Client.HudsonMasterComputermonitorData.prototype.hudsonNodeMonitorsDiskSpaceMonitor;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonMasterComputermonitorData.prototype.hudsonNodeMonitorsArchitectureMonitor;

/**
 * @type {!API.Client.ResponseTimeMonitorData}
 * @export
 */
API.Client.HudsonMasterComputermonitorData.prototype.hudsonNodeMonitorsResponseTimeMonitor;

/**
 * @type {!API.Client.ClockDifference}
 * @export
 */
API.Client.HudsonMasterComputermonitorData.prototype.hudsonNodeMonitorsClockMonitor;

/**
 * @type {!string}
 * @export
 */
API.Client.HudsonMasterComputermonitorData.prototype._class;

