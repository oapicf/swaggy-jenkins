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
  public class SwaggyjenkinsPipelineLatestRun {
    /// <summary>
    /// Gets or Sets Artifacts
    /// </summary>
    [DataMember(Name="artifacts", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "artifacts")]
    public List<SwaggyjenkinsPipelineLatestRunartifacts> Artifacts { get; set; }

    /// <summary>
    /// Gets or Sets DurationInMillis
    /// </summary>
    [DataMember(Name="durationInMillis", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "durationInMillis")]
    public int? DurationInMillis { get; set; }

    /// <summary>
    /// Gets or Sets EstimatedDurationInMillis
    /// </summary>
    [DataMember(Name="estimatedDurationInMillis", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "estimatedDurationInMillis")]
    public int? EstimatedDurationInMillis { get; set; }

    /// <summary>
    /// Gets or Sets EnQueueTime
    /// </summary>
    [DataMember(Name="enQueueTime", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "enQueueTime")]
    public string EnQueueTime { get; set; }

    /// <summary>
    /// Gets or Sets EndTime
    /// </summary>
    [DataMember(Name="endTime", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "endTime")]
    public string EndTime { get; set; }

    /// <summary>
    /// Gets or Sets Id
    /// </summary>
    [DataMember(Name="id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "id")]
    public string Id { get; set; }

    /// <summary>
    /// Gets or Sets Organization
    /// </summary>
    [DataMember(Name="organization", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "organization")]
    public string Organization { get; set; }

    /// <summary>
    /// Gets or Sets Pipeline
    /// </summary>
    [DataMember(Name="pipeline", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "pipeline")]
    public string Pipeline { get; set; }

    /// <summary>
    /// Gets or Sets Result
    /// </summary>
    [DataMember(Name="result", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "result")]
    public string Result { get; set; }

    /// <summary>
    /// Gets or Sets RunSummary
    /// </summary>
    [DataMember(Name="runSummary", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "runSummary")]
    public string RunSummary { get; set; }

    /// <summary>
    /// Gets or Sets StartTime
    /// </summary>
    [DataMember(Name="startTime", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "startTime")]
    public string StartTime { get; set; }

    /// <summary>
    /// Gets or Sets State
    /// </summary>
    [DataMember(Name="state", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "state")]
    public string State { get; set; }

    /// <summary>
    /// Gets or Sets Type
    /// </summary>
    [DataMember(Name="type", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "type")]
    public string Type { get; set; }

    /// <summary>
    /// Gets or Sets CommitId
    /// </summary>
    [DataMember(Name="commitId", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "commitId")]
    public string CommitId { get; set; }

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
      sb.Append("class SwaggyjenkinsPipelineLatestRun {\n");
      sb.Append("  Artifacts: ").Append(Artifacts).Append("\n");
      sb.Append("  DurationInMillis: ").Append(DurationInMillis).Append("\n");
      sb.Append("  EstimatedDurationInMillis: ").Append(EstimatedDurationInMillis).Append("\n");
      sb.Append("  EnQueueTime: ").Append(EnQueueTime).Append("\n");
      sb.Append("  EndTime: ").Append(EndTime).Append("\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  Organization: ").Append(Organization).Append("\n");
      sb.Append("  Pipeline: ").Append(Pipeline).Append("\n");
      sb.Append("  Result: ").Append(Result).Append("\n");
      sb.Append("  RunSummary: ").Append(RunSummary).Append("\n");
      sb.Append("  StartTime: ").Append(StartTime).Append("\n");
      sb.Append("  State: ").Append(State).Append("\n");
      sb.Append("  Type: ").Append(Type).Append("\n");
      sb.Append("  CommitId: ").Append(CommitId).Append("\n");
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
