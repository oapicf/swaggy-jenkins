package models

type HudsonMasterComputermonitorData struct {

	HudsonNodeMonitorsSwapSpaceMonitor SwapSpaceMonitorMemoryUsage2 `json:"hudson.node_monitors.SwapSpaceMonitor,omitempty"`

	HudsonNodeMonitorsTemporarySpaceMonitor DiskSpaceMonitorDescriptorDiskSpace `json:"hudson.node_monitors.TemporarySpaceMonitor,omitempty"`

	HudsonNodeMonitorsDiskSpaceMonitor DiskSpaceMonitorDescriptorDiskSpace `json:"hudson.node_monitors.DiskSpaceMonitor,omitempty"`

	HudsonNodeMonitorsArchitectureMonitor string `json:"hudson.node_monitors.ArchitectureMonitor,omitempty"`

	HudsonNodeMonitorsResponseTimeMonitor ResponseTimeMonitorData `json:"hudson.node_monitors.ResponseTimeMonitor,omitempty"`

	HudsonNodeMonitorsClockMonitor ClockDifference `json:"hudson.node_monitors.ClockMonitor,omitempty"`

	Class string `json:"_class,omitempty"`
}
