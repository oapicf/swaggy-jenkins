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
  public class MultibranchPipeline {
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
    /// Gets or Sets LatestRun
    /// </summary>
    [DataMember(Name="latestRun", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "latestRun")]
    public string LatestRun { get; set; }

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
    /// Gets or Sets WeatherScore
    /// </summary>
    [DataMember(Name="weatherScore", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "weatherScore")]
    public int? WeatherScore { get; set; }

    /// <summary>
    /// Gets or Sets BranchNames
    /// </summary>
    [DataMember(Name="branchNames", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "branchNames")]
    public List<string> BranchNames { get; set; }

    /// <summary>
    /// Gets or Sets NumberOfFailingBranches
    /// </summary>
    [DataMember(Name="numberOfFailingBranches", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "numberOfFailingBranches")]
    public int? NumberOfFailingBranches { get; set; }

    /// <summary>
    /// Gets or Sets NumberOfFailingPullRequests
    /// </summary>
    [DataMember(Name="numberOfFailingPullRequests", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "numberOfFailingPullRequests")]
    public int? NumberOfFailingPullRequests { get; set; }

    /// <summary>
    /// Gets or Sets NumberOfSuccessfulBranches
    /// </summary>
    [DataMember(Name="numberOfSuccessfulBranches", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "numberOfSuccessfulBranches")]
    public int? NumberOfSuccessfulBranches { get; set; }

    /// <summary>
    /// Gets or Sets NumberOfSuccessfulPullRequests
    /// </summary>
    [DataMember(Name="numberOfSuccessfulPullRequests", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "numberOfSuccessfulPullRequests")]
    public int? NumberOfSuccessfulPullRequests { get; set; }

    /// <summary>
    /// Gets or Sets TotalNumberOfBranches
    /// </summary>
    [DataMember(Name="totalNumberOfBranches", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "totalNumberOfBranches")]
    public int? TotalNumberOfBranches { get; set; }

    /// <summary>
    /// Gets or Sets TotalNumberOfPullRequests
    /// </summary>
    [DataMember(Name="totalNumberOfPullRequests", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "totalNumberOfPullRequests")]
    public int? TotalNumberOfPullRequests { get; set; }

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
      sb.Append("class MultibranchPipeline {\n");
      sb.Append("  DisplayName: ").Append(DisplayName).Append("\n");
      sb.Append("  EstimatedDurationInMillis: ").Append(EstimatedDurationInMillis).Append("\n");
      sb.Append("  LatestRun: ").Append(LatestRun).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Organization: ").Append(Organization).Append("\n");
      sb.Append("  WeatherScore: ").Append(WeatherScore).Append("\n");
      sb.Append("  BranchNames: ").Append(BranchNames).Append("\n");
      sb.Append("  NumberOfFailingBranches: ").Append(NumberOfFailingBranches).Append("\n");
      sb.Append("  NumberOfFailingPullRequests: ").Append(NumberOfFailingPullRequests).Append("\n");
      sb.Append("  NumberOfSuccessfulBranches: ").Append(NumberOfSuccessfulBranches).Append("\n");
      sb.Append("  NumberOfSuccessfulPullRequests: ").Append(NumberOfSuccessfulPullRequests).Append("\n");
      sb.Append("  TotalNumberOfBranches: ").Append(TotalNumberOfBranches).Append("\n");
      sb.Append("  TotalNumberOfPullRequests: ").Append(TotalNumberOfPullRequests).Append("\n");
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
