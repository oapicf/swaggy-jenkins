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
  public class HudsonmodelFreeStyleBuild {
    /// <summary>
    /// Gets or Sets _Class
    /// </summary>
    [DataMember(Name="_class", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_class")]
    public string _Class { get; set; }

    /// <summary>
    /// Gets or Sets Number
    /// </summary>
    [DataMember(Name="number", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "number")]
    public int? Number { get; set; }

    /// <summary>
    /// Gets or Sets Url
    /// </summary>
    [DataMember(Name="url", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "url")]
    public string Url { get; set; }

    /// <summary>
    /// Gets or Sets Actions
    /// </summary>
    [DataMember(Name="actions", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "actions")]
    public List<HudsonmodelCauseAction> Actions { get; set; }

    /// <summary>
    /// Gets or Sets Building
    /// </summary>
    [DataMember(Name="building", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "building")]
    public bool? Building { get; set; }

    /// <summary>
    /// Gets or Sets Description
    /// </summary>
    [DataMember(Name="description", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "description")]
    public string Description { get; set; }

    /// <summary>
    /// Gets or Sets DisplayName
    /// </summary>
    [DataMember(Name="displayName", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "displayName")]
    public string DisplayName { get; set; }

    /// <summary>
    /// Gets or Sets Duration
    /// </summary>
    [DataMember(Name="duration", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "duration")]
    public int? Duration { get; set; }

    /// <summary>
    /// Gets or Sets EstimatedDuration
    /// </summary>
    [DataMember(Name="estimatedDuration", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "estimatedDuration")]
    public int? EstimatedDuration { get; set; }

    /// <summary>
    /// Gets or Sets Executor
    /// </summary>
    [DataMember(Name="executor", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "executor")]
    public string Executor { get; set; }

    /// <summary>
    /// Gets or Sets FullDisplayName
    /// </summary>
    [DataMember(Name="fullDisplayName", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "fullDisplayName")]
    public string FullDisplayName { get; set; }

    /// <summary>
    /// Gets or Sets Id
    /// </summary>
    [DataMember(Name="id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "id")]
    public string Id { get; set; }

    /// <summary>
    /// Gets or Sets KeepLog
    /// </summary>
    [DataMember(Name="keepLog", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "keepLog")]
    public bool? KeepLog { get; set; }

    /// <summary>
    /// Gets or Sets QueueId
    /// </summary>
    [DataMember(Name="queueId", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "queueId")]
    public int? QueueId { get; set; }

    /// <summary>
    /// Gets or Sets Result
    /// </summary>
    [DataMember(Name="result", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "result")]
    public string Result { get; set; }

    /// <summary>
    /// Gets or Sets Timestamp
    /// </summary>
    [DataMember(Name="timestamp", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "timestamp")]
    public int? Timestamp { get; set; }

    /// <summary>
    /// Gets or Sets BuiltOn
    /// </summary>
    [DataMember(Name="builtOn", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "builtOn")]
    public string BuiltOn { get; set; }

    /// <summary>
    /// Gets or Sets ChangeSet
    /// </summary>
    [DataMember(Name="changeSet", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "changeSet")]
    public HudsonscmEmptyChangeLogSet ChangeSet { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class HudsonmodelFreeStyleBuild {\n");
      sb.Append("  _Class: ").Append(_Class).Append("\n");
      sb.Append("  Number: ").Append(Number).Append("\n");
      sb.Append("  Url: ").Append(Url).Append("\n");
      sb.Append("  Actions: ").Append(Actions).Append("\n");
      sb.Append("  Building: ").Append(Building).Append("\n");
      sb.Append("  Description: ").Append(Description).Append("\n");
      sb.Append("  DisplayName: ").Append(DisplayName).Append("\n");
      sb.Append("  Duration: ").Append(Duration).Append("\n");
      sb.Append("  EstimatedDuration: ").Append(EstimatedDuration).Append("\n");
      sb.Append("  Executor: ").Append(Executor).Append("\n");
      sb.Append("  FullDisplayName: ").Append(FullDisplayName).Append("\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  KeepLog: ").Append(KeepLog).Append("\n");
      sb.Append("  QueueId: ").Append(QueueId).Append("\n");
      sb.Append("  Result: ").Append(Result).Append("\n");
      sb.Append("  Timestamp: ").Append(Timestamp).Append("\n");
      sb.Append("  BuiltOn: ").Append(BuiltOn).Append("\n");
      sb.Append("  ChangeSet: ").Append(ChangeSet).Append("\n");
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
