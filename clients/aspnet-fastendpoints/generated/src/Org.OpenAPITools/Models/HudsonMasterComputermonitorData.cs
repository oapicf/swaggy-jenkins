namespace Org.OpenAPITools.Models;


/// <summary>
/// 
/// </summary>
public class HudsonMasterComputermonitorData 
{
    public SwapSpaceMonitorMemoryUsage2 HudsonNodeMonitorsSwapSpaceMonitor { get; set; }
    public DiskSpaceMonitorDescriptorDiskSpace HudsonNodeMonitorsTemporarySpaceMonitor { get; set; }
    public DiskSpaceMonitorDescriptorDiskSpace HudsonNodeMonitorsDiskSpaceMonitor { get; set; }
    public string HudsonNodeMonitorsArchitectureMonitor { get; set; }
    public ResponseTimeMonitorData HudsonNodeMonitorsResponseTimeMonitor { get; set; }
    public ClockDifference HudsonNodeMonitorsClockMonitor { get; set; }
    public string Class { get; set; }
}


