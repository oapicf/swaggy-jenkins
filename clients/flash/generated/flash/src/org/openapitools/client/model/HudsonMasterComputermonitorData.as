package org.openapitools.client.model {

import org.openapitools.client.model.ClockDifference;
import org.openapitools.client.model.DiskSpaceMonitorDescriptorDiskSpace;
import org.openapitools.client.model.ResponseTimeMonitorData;
import org.openapitools.client.model.SwapSpaceMonitorMemoryUsage2;

    [XmlRootNode(name="HudsonMasterComputermonitorData")]
    public class HudsonMasterComputermonitorData {
                [XmlElement(name="hudson.node_monitors.SwapSpaceMonitor")]
        public var hudsonNodeMonitorsSwapSpaceMonitor: SwapSpaceMonitorMemoryUsage2 = NaN;
                [XmlElement(name="hudson.node_monitors.TemporarySpaceMonitor")]
        public var hudsonNodeMonitorsTemporarySpaceMonitor: DiskSpaceMonitorDescriptorDiskSpace = NaN;
                [XmlElement(name="hudson.node_monitors.DiskSpaceMonitor")]
        public var hudsonNodeMonitorsDiskSpaceMonitor: DiskSpaceMonitorDescriptorDiskSpace = NaN;
                [XmlElement(name="hudson.node_monitors.ArchitectureMonitor")]
        public var hudsonNodeMonitorsArchitectureMonitor: String = null;
                [XmlElement(name="hudson.node_monitors.ResponseTimeMonitor")]
        public var hudsonNodeMonitorsResponseTimeMonitor: ResponseTimeMonitorData = NaN;
                [XmlElement(name="hudson.node_monitors.ClockMonitor")]
        public var hudsonNodeMonitorsClockMonitor: ClockDifference = NaN;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "HudsonMasterComputermonitorData: ";
        str += " (hudsonNodeMonitorsSwapSpaceMonitor: " + hudsonNodeMonitorsSwapSpaceMonitor + ")";
        str += " (hudsonNodeMonitorsTemporarySpaceMonitor: " + hudsonNodeMonitorsTemporarySpaceMonitor + ")";
        str += " (hudsonNodeMonitorsDiskSpaceMonitor: " + hudsonNodeMonitorsDiskSpaceMonitor + ")";
        str += " (hudsonNodeMonitorsArchitectureMonitor: " + hudsonNodeMonitorsArchitectureMonitor + ")";
        str += " (hudsonNodeMonitorsResponseTimeMonitor: " + hudsonNodeMonitorsResponseTimeMonitor + ")";
        str += " (hudsonNodeMonitorsClockMonitor: " + hudsonNodeMonitorsClockMonitor + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
