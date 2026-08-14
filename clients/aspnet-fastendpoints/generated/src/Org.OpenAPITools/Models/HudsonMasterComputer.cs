namespace Org.OpenAPITools.Models;


/// <summary>
/// 
/// </summary>
public class HudsonMasterComputer 
{
    public string Class { get; set; }
    public string DisplayName { get; set; }
    public List<HudsonMasterComputerexecutors> Executors { get; set; }
    public string Icon { get; set; }
    public string IconClassName { get; set; }
    public bool Idle { get; set; }
    public bool JnlpAgent { get; set; }
    public bool LaunchSupported { get; set; }
    public Label1 LoadStatistics { get; set; }
    public bool ManualLaunchAllowed { get; set; }
    public HudsonMasterComputermonitorData MonitorData { get; set; }
    public int NumExecutors { get; set; }
    public bool Offline { get; set; }
    public string OfflineCause { get; set; }
    public string OfflineCauseReason { get; set; }
    public bool TemporarilyOffline { get; set; }
}


