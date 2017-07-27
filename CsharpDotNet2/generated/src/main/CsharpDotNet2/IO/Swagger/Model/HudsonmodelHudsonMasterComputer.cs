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
  public class HudsonmodelHudsonMasterComputer {
    /// <summary>
    /// Gets or Sets _Class
    /// </summary>
    [DataMember(Name="_class", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_class")]
    public string _Class { get; set; }

    /// <summary>
    /// Gets or Sets DisplayName
    /// </summary>
    [DataMember(Name="displayName", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "displayName")]
    public string DisplayName { get; set; }

    /// <summary>
    /// Gets or Sets Executors
    /// </summary>
    [DataMember(Name="executors", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "executors")]
    public List<HudsonmodelHudsonMasterComputerexecutors> Executors { get; set; }

    /// <summary>
    /// Gets or Sets Icon
    /// </summary>
    [DataMember(Name="icon", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "icon")]
    public string Icon { get; set; }

    /// <summary>
    /// Gets or Sets IconClassName
    /// </summary>
    [DataMember(Name="iconClassName", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "iconClassName")]
    public string IconClassName { get; set; }

    /// <summary>
    /// Gets or Sets Idle
    /// </summary>
    [DataMember(Name="idle", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "idle")]
    public bool? Idle { get; set; }

    /// <summary>
    /// Gets or Sets JnlpAgent
    /// </summary>
    [DataMember(Name="jnlpAgent", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "jnlpAgent")]
    public bool? JnlpAgent { get; set; }

    /// <summary>
    /// Gets or Sets LaunchSupported
    /// </summary>
    [DataMember(Name="launchSupported", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "launchSupported")]
    public bool? LaunchSupported { get; set; }

    /// <summary>
    /// Gets or Sets LoadStatistics
    /// </summary>
    [DataMember(Name="loadStatistics", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "loadStatistics")]
    public HudsonmodelLabel1 LoadStatistics { get; set; }

    /// <summary>
    /// Gets or Sets ManualLaunchAllowed
    /// </summary>
    [DataMember(Name="manualLaunchAllowed", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "manualLaunchAllowed")]
    public bool? ManualLaunchAllowed { get; set; }

    /// <summary>
    /// Gets or Sets MonitorData
    /// </summary>
    [DataMember(Name="monitorData", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "monitorData")]
    public HudsonmodelHudsonMasterComputerMonitorData MonitorData { get; set; }

    /// <summary>
    /// Gets or Sets NumExecutors
    /// </summary>
    [DataMember(Name="numExecutors", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "numExecutors")]
    public int? NumExecutors { get; set; }

    /// <summary>
    /// Gets or Sets Offline
    /// </summary>
    [DataMember(Name="offline", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "offline")]
    public bool? Offline { get; set; }

    /// <summary>
    /// Gets or Sets OfflineCause
    /// </summary>
    [DataMember(Name="offlineCause", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "offlineCause")]
    public string OfflineCause { get; set; }

    /// <summary>
    /// Gets or Sets OfflineCauseReason
    /// </summary>
    [DataMember(Name="offlineCauseReason", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "offlineCauseReason")]
    public string OfflineCauseReason { get; set; }

    /// <summary>
    /// Gets or Sets TemporarilyOffline
    /// </summary>
    [DataMember(Name="temporarilyOffline", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "temporarilyOffline")]
    public bool? TemporarilyOffline { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class HudsonmodelHudsonMasterComputer {\n");
      sb.Append("  _Class: ").Append(_Class).Append("\n");
      sb.Append("  DisplayName: ").Append(DisplayName).Append("\n");
      sb.Append("  Executors: ").Append(Executors).Append("\n");
      sb.Append("  Icon: ").Append(Icon).Append("\n");
      sb.Append("  IconClassName: ").Append(IconClassName).Append("\n");
      sb.Append("  Idle: ").Append(Idle).Append("\n");
      sb.Append("  JnlpAgent: ").Append(JnlpAgent).Append("\n");
      sb.Append("  LaunchSupported: ").Append(LaunchSupported).Append("\n");
      sb.Append("  LoadStatistics: ").Append(LoadStatistics).Append("\n");
      sb.Append("  ManualLaunchAllowed: ").Append(ManualLaunchAllowed).Append("\n");
      sb.Append("  MonitorData: ").Append(MonitorData).Append("\n");
      sb.Append("  NumExecutors: ").Append(NumExecutors).Append("\n");
      sb.Append("  Offline: ").Append(Offline).Append("\n");
      sb.Append("  OfflineCause: ").Append(OfflineCause).Append("\n");
      sb.Append("  OfflineCauseReason: ").Append(OfflineCauseReason).Append("\n");
      sb.Append("  TemporarilyOffline: ").Append(TemporarilyOffline).Append("\n");
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
