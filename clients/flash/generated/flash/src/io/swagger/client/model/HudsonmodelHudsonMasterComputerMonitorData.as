package io.swagger.client.model {

import io.swagger.client.model.HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace;
import io.swagger.client.model.HudsonnodeMonitorsResponseTimeMonitorData;
import io.swagger.client.model.HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2;
import io.swagger.client.model.HudsonutilClockDifference;

    [XmlRootNode(name="HudsonmodelHudsonMasterComputerMonitorData")]
    public class HudsonmodelHudsonMasterComputerMonitorData {
                [XmlElement(name="hudson.node_monitors.SwapSpaceMonitor")]
        public var hudsonNodeMonitorsSwapSpaceMonitor: HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 = NaN;
                [XmlElement(name="hudson.node_monitors.TemporarySpaceMonitor")]
        public var hudsonNodeMonitorsTemporarySpaceMonitor: HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace = NaN;
                [XmlElement(name="hudson.node_monitors.DiskSpaceMonitor")]
        public var hudsonNodeMonitorsDiskSpaceMonitor: HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace = NaN;
                [XmlElement(name="hudson.node_monitors.ArchitectureMonitor")]
        public var hudsonNodeMonitorsArchitectureMonitor: String = null;
                [XmlElement(name="hudson.node_monitors.ResponseTimeMonitor")]
        public var hudsonNodeMonitorsResponseTimeMonitor: HudsonnodeMonitorsResponseTimeMonitorData = NaN;
                [XmlElement(name="hudson.node_monitors.ClockMonitor")]
        public var hudsonNodeMonitorsClockMonitor: HudsonutilClockDifference = NaN;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "HudsonmodelHudsonMasterComputerMonitorData: ";
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
