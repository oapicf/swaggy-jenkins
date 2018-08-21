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
  public class BranchImpllinks {
    /// <summary>
    /// Gets or Sets Self
    /// </summary>
    [DataMember(Name="self", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "self")]
    public Link Self { get; set; }

    /// <summary>
    /// Gets or Sets Actions
    /// </summary>
    [DataMember(Name="actions", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "actions")]
    public Link Actions { get; set; }

    /// <summary>
    /// Gets or Sets Runs
    /// </summary>
    [DataMember(Name="runs", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "runs")]
    public Link Runs { get; set; }

    /// <summary>
    /// Gets or Sets Queue
    /// </summary>
    [DataMember(Name="queue", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "queue")]
    public Link Queue { get; set; }

    /// <summary>
    /// Gets or Sets Class
    /// </summary>
    [DataMember(Name="_class", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_class")]
    public string Class { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class BranchImpllinks {\n");
      sb.Append("  Self: ").Append(Self).Append("\n");
      sb.Append("  Actions: ").Append(Actions).Append("\n");
      sb.Append("  Runs: ").Append(Runs).Append("\n");
      sb.Append("  Queue: ").Append(Queue).Append("\n");
      sb.Append("  Class: ").Append(Class).Append("\n");
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
