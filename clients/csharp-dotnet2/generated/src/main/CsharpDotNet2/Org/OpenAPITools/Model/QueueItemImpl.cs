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
  public class QueueItemImpl {
    /// <summary>
    /// Gets or Sets Class
    /// </summary>
    [DataMember(Name="_class", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_class")]
    public string Class { get; set; }

    /// <summary>
    /// Gets or Sets ExpectedBuildNumber
    /// </summary>
    [DataMember(Name="expectedBuildNumber", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "expectedBuildNumber")]
    public int? ExpectedBuildNumber { get; set; }

    /// <summary>
    /// Gets or Sets Id
    /// </summary>
    [DataMember(Name="id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "id")]
    public string Id { get; set; }

    /// <summary>
    /// Gets or Sets Pipeline
    /// </summary>
    [DataMember(Name="pipeline", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "pipeline")]
    public string Pipeline { get; set; }

    /// <summary>
    /// Gets or Sets QueuedTime
    /// </summary>
    [DataMember(Name="queuedTime", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "queuedTime")]
    public int? QueuedTime { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class QueueItemImpl {\n");
      sb.Append("  Class: ").Append(Class).Append("\n");
      sb.Append("  ExpectedBuildNumber: ").Append(ExpectedBuildNumber).Append("\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  Pipeline: ").Append(Pipeline).Append("\n");
      sb.Append("  QueuedTime: ").Append(QueuedTime).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }

    /// <summary>
    /// Get the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public string ToJson() {
      return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
    }

}
}
