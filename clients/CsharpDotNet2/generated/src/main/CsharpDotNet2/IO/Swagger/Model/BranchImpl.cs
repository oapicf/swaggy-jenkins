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
  public class BranchImpl {
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
    /// Gets or Sets EstimatedDurationInMillis
    /// </summary>
    [DataMember(Name="estimatedDurationInMillis", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "estimatedDurationInMillis")]
    public int? EstimatedDurationInMillis { get; set; }

    /// <summary>
    /// Gets or Sets FullDisplayName
    /// </summary>
    [DataMember(Name="fullDisplayName", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "fullDisplayName")]
    public string FullDisplayName { get; set; }

    /// <summary>
    /// Gets or Sets FullName
    /// </summary>
    [DataMember(Name="fullName", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "fullName")]
    public string FullName { get; set; }

    /// <summary>
    /// Gets or Sets Name
    /// </summary>
    [DataMember(Name="name", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "name")]
    public string Name { get; set; }

    /// <summary>
    /// Gets or Sets Organization
    /// </summary>
    [DataMember(Name="organization", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "organization")]
    public string Organization { get; set; }

    /// <summary>
    /// Gets or Sets Parameters
    /// </summary>
    [DataMember(Name="parameters", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "parameters")]
    public List<StringParameterDefinition> Parameters { get; set; }

    /// <summary>
    /// Gets or Sets Permissions
    /// </summary>
    [DataMember(Name="permissions", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "permissions")]
    public BranchImplpermissions Permissions { get; set; }

    /// <summary>
    /// Gets or Sets WeatherScore
    /// </summary>
    [DataMember(Name="weatherScore", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "weatherScore")]
    public int? WeatherScore { get; set; }

    /// <summary>
    /// Gets or Sets PullRequest
    /// </summary>
    [DataMember(Name="pullRequest", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "pullRequest")]
    public string PullRequest { get; set; }

    /// <summary>
    /// Gets or Sets Links
    /// </summary>
    [DataMember(Name="_links", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_links")]
    public BranchImpllinks Links { get; set; }

    /// <summary>
    /// Gets or Sets LatestRun
    /// </summary>
    [DataMember(Name="latestRun", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "latestRun")]
    public PipelineRunImpl LatestRun { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class BranchImpl {\n");
      sb.Append("  _Class: ").Append(_Class).Append("\n");
      sb.Append("  DisplayName: ").Append(DisplayName).Append("\n");
      sb.Append("  EstimatedDurationInMillis: ").Append(EstimatedDurationInMillis).Append("\n");
      sb.Append("  FullDisplayName: ").Append(FullDisplayName).Append("\n");
      sb.Append("  FullName: ").Append(FullName).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Organization: ").Append(Organization).Append("\n");
      sb.Append("  Parameters: ").Append(Parameters).Append("\n");
      sb.Append("  Permissions: ").Append(Permissions).Append("\n");
      sb.Append("  WeatherScore: ").Append(WeatherScore).Append("\n");
      sb.Append("  PullRequest: ").Append(PullRequest).Append("\n");
      sb.Append("  Links: ").Append(Links).Append("\n");
      sb.Append("  LatestRun: ").Append(LatestRun).Append("\n");
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
