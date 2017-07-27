using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace IO.Swagger.Model {

  /// <summary>
  /// 
  /// </summary>
  [DataContract]
  public class HudsonmodelHudsonMasterComputerMonitorData {
    /// <summary>
    /// Gets or Sets HudsonNodeMonitorsSwapSpaceMonitor
    /// </summary>
    [DataMember(Name="hudson.node_monitors.SwapSpaceMonitor", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "hudson.node_monitors.SwapSpaceMonitor")]
    public HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 HudsonNodeMonitorsSwapSpaceMonitor { get; set; }

    /// <summary>
    /// Gets or Sets HudsonNodeMonitorsTemporarySpaceMonitor
    /// </summary>
    [DataMember(Name="hudson.node_monitors.TemporarySpaceMonitor", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "hudson.node_monitors.TemporarySpaceMonitor")]
    public HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace HudsonNodeMonitorsTemporarySpaceMonitor { get; set; }

    /// <summary>
    /// Gets or Sets HudsonNodeMonitorsDiskSpaceMonitor
    /// </summary>
    [DataMember(Name="hudson.node_monitors.DiskSpaceMonitor", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "hudson.node_monitors.DiskSpaceMonitor")]
    public HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace HudsonNodeMonitorsDiskSpaceMonitor { get; set; }

    /// <summary>
    /// Gets or Sets HudsonNodeMonitorsArchitectureMonitor
    /// </summary>
    [DataMember(Name="hudson.node_monitors.ArchitectureMonitor", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "hudson.node_monitors.ArchitectureMonitor")]
    public string HudsonNodeMonitorsArchitectureMonitor { get; set; }

    /// <summary>
    /// Gets or Sets HudsonNodeMonitorsResponseTimeMonitor
    /// </summary>
    [DataMember(Name="hudson.node_monitors.ResponseTimeMonitor", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "hudson.node_monitors.ResponseTimeMonitor")]
    public HudsonnodeMonitorsResponseTimeMonitorData HudsonNodeMonitorsResponseTimeMonitor { get; set; }

    /// <summary>
    /// Gets or Sets HudsonNodeMonitorsClockMonitor
    /// </summary>
    [DataMember(Name="hudson.node_monitors.ClockMonitor", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "hudson.node_monitors.ClockMonitor")]
    public HudsonutilClockDifference HudsonNodeMonitorsClockMonitor { get; set; }

    /// <summary>
    /// Gets or Sets _Class
    /// </summary>
    [DataMember(Name="_class", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_class")]
    public string _Class { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class HudsonmodelHudsonMasterComputerMonitorData {\n");
      sb.Append("  HudsonNodeMonitorsSwapSpaceMonitor: ").Append(HudsonNodeMonitorsSwapSpaceMonitor).Append("\n");
      sb.Append("  HudsonNodeMonitorsTemporarySpaceMonitor: ").Append(HudsonNodeMonitorsTemporarySpaceMonitor).Append("\n");
      sb.Append("  HudsonNodeMonitorsDiskSpaceMonitor: ").Append(HudsonNodeMonitorsDiskSpaceMonitor).Append("\n");
      sb.Append("  HudsonNodeMonitorsArchitectureMonitor: ").Append(HudsonNodeMonitorsArchitectureMonitor).Append("\n");
      sb.Append("  HudsonNodeMonitorsResponseTimeMonitor: ").Append(HudsonNodeMonitorsResponseTimeMonitor).Append("\n");
      sb.Append("  HudsonNodeMonitorsClockMonitor: ").Append(HudsonNodeMonitorsClockMonitor).Append("\n");
      sb.Append("  _Class: ").Append(_Class).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }

    /// <summary>
    /// Get the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public string ToJson() {
      return JsonConvert.SerializeObject(this, Formatting.Indented);
    }

}
}
