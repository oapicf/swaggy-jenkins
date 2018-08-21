using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace Org.OpenAPITools.Model {

  /// <summary>
  /// 
  /// </summary>
  [DataContract]
  public class ComputerSet {
    /// <summary>
    /// Gets or Sets Class
    /// </summary>
    [DataMember(Name="_class", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_class")]
    public string Class { get; set; }

    /// <summary>
    /// Gets or Sets BusyExecutors
    /// </summary>
    [DataMember(Name="busyExecutors", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "busyExecutors")]
    public int? BusyExecutors { get; set; }

    /// <summary>
    /// Gets or Sets Computer
    /// </summary>
    [DataMember(Name="computer", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "computer")]
    public List<HudsonMasterComputer> Computer { get; set; }

    /// <summary>
    /// Gets or Sets DisplayName
    /// </summary>
    [DataMember(Name="displayName", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "displayName")]
    public string DisplayName { get; set; }

    /// <summary>
    /// Gets or Sets TotalExecutors
    /// </summary>
    [DataMember(Name="totalExecutors", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "totalExecutors")]
    public int? TotalExecutors { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ComputerSet {\n");
      sb.Append("  Class: ").Append(Class).Append("\n");
      sb.Append("  BusyExecutors: ").Append(BusyExecutors).Append("\n");
      sb.Append("  Computer: ").Append(Computer).Append("\n");
      sb.Append("  DisplayName: ").Append(DisplayName).Append("\n");
      sb.Append("  TotalExecutors: ").Append(TotalExecutors).Append("\n");
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
