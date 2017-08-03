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
  public class Pipeline {
    /// <summary>
    /// Gets or Sets _Class
    /// </summary>
    [DataMember(Name="_class", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_class")]
    public string _Class { get; set; }

    /// <summary>
    /// Gets or Sets Organization
    /// </summary>
    [DataMember(Name="organization", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "organization")]
    public string Organization { get; set; }

    /// <summary>
    /// Gets or Sets Name
    /// </summary>
    [DataMember(Name="name", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "name")]
    public string Name { get; set; }

    /// <summary>
    /// Gets or Sets DisplayName
    /// </summary>
    [DataMember(Name="displayName", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "displayName")]
    public string DisplayName { get; set; }

    /// <summary>
    /// Gets or Sets FullName
    /// </summary>
    [DataMember(Name="fullName", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "fullName")]
    public string FullName { get; set; }

    /// <summary>
    /// Gets or Sets WeatherScore
    /// </summary>
    [DataMember(Name="weatherScore", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "weatherScore")]
    public int? WeatherScore { get; set; }

    /// <summary>
    /// Gets or Sets EstimatedDurationInMillis
    /// </summary>
    [DataMember(Name="estimatedDurationInMillis", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "estimatedDurationInMillis")]
    public int? EstimatedDurationInMillis { get; set; }

    /// <summary>
    /// Gets or Sets LatestRun
    /// </summary>
    [DataMember(Name="latestRun", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "latestRun")]
    public PipelinelatestRun LatestRun { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Pipeline {\n");
      sb.Append("  _Class: ").Append(_Class).Append("\n");
      sb.Append("  Organization: ").Append(Organization).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  DisplayName: ").Append(DisplayName).Append("\n");
      sb.Append("  FullName: ").Append(FullName).Append("\n");
      sb.Append("  WeatherScore: ").Append(WeatherScore).Append("\n");
      sb.Append("  EstimatedDurationInMillis: ").Append(EstimatedDurationInMillis).Append("\n");
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
