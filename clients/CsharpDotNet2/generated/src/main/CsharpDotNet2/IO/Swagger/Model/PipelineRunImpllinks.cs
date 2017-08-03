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
  public class PipelineRunImpllinks {
    /// <summary>
    /// Gets or Sets Nodes
    /// </summary>
    [DataMember(Name="nodes", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "nodes")]
    public Link Nodes { get; set; }

    /// <summary>
    /// Gets or Sets Log
    /// </summary>
    [DataMember(Name="log", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "log")]
    public Link Log { get; set; }

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
    /// Gets or Sets Steps
    /// </summary>
    [DataMember(Name="steps", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "steps")]
    public Link Steps { get; set; }

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
      sb.Append("class PipelineRunImpllinks {\n");
      sb.Append("  Nodes: ").Append(Nodes).Append("\n");
      sb.Append("  Log: ").Append(Log).Append("\n");
      sb.Append("  Self: ").Append(Self).Append("\n");
      sb.Append("  Actions: ").Append(Actions).Append("\n");
      sb.Append("  Steps: ").Append(Steps).Append("\n");
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
