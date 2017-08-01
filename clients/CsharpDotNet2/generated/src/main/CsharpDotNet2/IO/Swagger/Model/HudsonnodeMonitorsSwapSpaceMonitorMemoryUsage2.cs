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
  public class HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 {
    /// <summary>
    /// Gets or Sets _Class
    /// </summary>
    [DataMember(Name="_class", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_class")]
    public string _Class { get; set; }

    /// <summary>
    /// Gets or Sets AvailablePhysicalMemory
    /// </summary>
    [DataMember(Name="availablePhysicalMemory", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "availablePhysicalMemory")]
    public int? AvailablePhysicalMemory { get; set; }

    /// <summary>
    /// Gets or Sets AvailableSwapSpace
    /// </summary>
    [DataMember(Name="availableSwapSpace", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "availableSwapSpace")]
    public int? AvailableSwapSpace { get; set; }

    /// <summary>
    /// Gets or Sets TotalPhysicalMemory
    /// </summary>
    [DataMember(Name="totalPhysicalMemory", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "totalPhysicalMemory")]
    public int? TotalPhysicalMemory { get; set; }

    /// <summary>
    /// Gets or Sets TotalSwapSpace
    /// </summary>
    [DataMember(Name="totalSwapSpace", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "totalSwapSpace")]
    public int? TotalSwapSpace { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 {\n");
      sb.Append("  _Class: ").Append(_Class).Append("\n");
      sb.Append("  AvailablePhysicalMemory: ").Append(AvailablePhysicalMemory).Append("\n");
      sb.Append("  AvailableSwapSpace: ").Append(AvailableSwapSpace).Append("\n");
      sb.Append("  TotalPhysicalMemory: ").Append(TotalPhysicalMemory).Append("\n");
      sb.Append("  TotalSwapSpace: ").Append(TotalSwapSpace).Append("\n");
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
