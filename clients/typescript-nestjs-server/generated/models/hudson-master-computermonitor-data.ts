import { ResponseTimeMonitorData } from './response-time-monitor-data';
import { ClockDifference } from './clock-difference';
import { DiskSpaceMonitorDescriptorDiskSpace } from './disk-space-monitor-descriptor-disk-space';
import { SwapSpaceMonitorMemoryUsage2 } from './swap-space-monitor-memory-usage2';


export interface HudsonMasterComputermonitorData { 
  'hudson.node_monitors.SwapSpaceMonitor'?: SwapSpaceMonitorMemoryUsage2;
  'hudson.node_monitors.TemporarySpaceMonitor'?: DiskSpaceMonitorDescriptorDiskSpace;
  'hudson.node_monitors.DiskSpaceMonitor'?: DiskSpaceMonitorDescriptorDiskSpace;
  'hudson.node_monitors.ArchitectureMonitor'?: string;
  'hudson.node_monitors.ResponseTimeMonitor'?: ResponseTimeMonitorData;
  'hudson.node_monitors.ClockMonitor'?: ClockDifference;
  _class?: string;
}

