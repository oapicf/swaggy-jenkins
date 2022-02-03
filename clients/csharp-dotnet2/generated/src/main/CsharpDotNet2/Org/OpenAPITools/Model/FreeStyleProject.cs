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
  public class FreeStyleProject {
    /// <summary>
    /// Gets or Sets Class
    /// </summary>
    [DataMember(Name="_class", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_class")]
    public string Class { get; set; }

    /// <summary>
    /// Gets or Sets Name
    /// </summary>
    [DataMember(Name="name", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "name")]
    public string Name { get; set; }

    /// <summary>
    /// Gets or Sets Url
    /// </summary>
    [DataMember(Name="url", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "url")]
    public string Url { get; set; }

    /// <summary>
    /// Gets or Sets Color
    /// </summary>
    [DataMember(Name="color", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "color")]
    public string Color { get; set; }

    /// <summary>
    /// Gets or Sets Actions
    /// </summary>
    [DataMember(Name="actions", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "actions")]
    public List<FreeStyleProjectactions> Actions { get; set; }

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
    /// Gets or Sets DisplayNameOrNull
    /// </summary>
    [DataMember(Name="displayNameOrNull", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "displayNameOrNull")]
    public string DisplayNameOrNull { get; set; }

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
    /// Gets or Sets Buildable
    /// </summary>
    [DataMember(Name="buildable", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "buildable")]
    public bool? Buildable { get; set; }

    /// <summary>
    /// Gets or Sets Builds
    /// </summary>
    [DataMember(Name="builds", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "builds")]
    public List<FreeStyleBuild> Builds { get; set; }

    /// <summary>
    /// Gets or Sets FirstBuild
    /// </summary>
    [DataMember(Name="firstBuild", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "firstBuild")]
    public FreeStyleBuild FirstBuild { get; set; }

    /// <summary>
    /// Gets or Sets HealthReport
    /// </summary>
    [DataMember(Name="healthReport", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "healthReport")]
    public List<FreeStyleProjecthealthReport> HealthReport { get; set; }

    /// <summary>
    /// Gets or Sets InQueue
    /// </summary>
    [DataMember(Name="inQueue", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "inQueue")]
    public bool? InQueue { get; set; }

    /// <summary>
    /// Gets or Sets KeepDependencies
    /// </summary>
    [DataMember(Name="keepDependencies", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "keepDependencies")]
    public bool? KeepDependencies { get; set; }

    /// <summary>
    /// Gets or Sets LastBuild
    /// </summary>
    [DataMember(Name="lastBuild", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "lastBuild")]
    public FreeStyleBuild LastBuild { get; set; }

    /// <summary>
    /// Gets or Sets LastCompletedBuild
    /// </summary>
    [DataMember(Name="lastCompletedBuild", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "lastCompletedBuild")]
    public FreeStyleBuild LastCompletedBuild { get; set; }

    /// <summary>
    /// Gets or Sets LastFailedBuild
    /// </summary>
    [DataMember(Name="lastFailedBuild", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "lastFailedBuild")]
    public string LastFailedBuild { get; set; }

    /// <summary>
    /// Gets or Sets LastStableBuild
    /// </summary>
    [DataMember(Name="lastStableBuild", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "lastStableBuild")]
    public FreeStyleBuild LastStableBuild { get; set; }

    /// <summary>
    /// Gets or Sets LastSuccessfulBuild
    /// </summary>
    [DataMember(Name="lastSuccessfulBuild", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "lastSuccessfulBuild")]
    public FreeStyleBuild LastSuccessfulBuild { get; set; }

    /// <summary>
    /// Gets or Sets LastUnstableBuild
    /// </summary>
    [DataMember(Name="lastUnstableBuild", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "lastUnstableBuild")]
    public string LastUnstableBuild { get; set; }

    /// <summary>
    /// Gets or Sets LastUnsuccessfulBuild
    /// </summary>
    [DataMember(Name="lastUnsuccessfulBuild", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "lastUnsuccessfulBuild")]
    public string LastUnsuccessfulBuild { get; set; }

    /// <summary>
    /// Gets or Sets NextBuildNumber
    /// </summary>
    [DataMember(Name="nextBuildNumber", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "nextBuildNumber")]
    public int? NextBuildNumber { get; set; }

    /// <summary>
    /// Gets or Sets QueueItem
    /// </summary>
    [DataMember(Name="queueItem", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "queueItem")]
    public string QueueItem { get; set; }

    /// <summary>
    /// Gets or Sets ConcurrentBuild
    /// </summary>
    [DataMember(Name="concurrentBuild", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "concurrentBuild")]
    public bool? ConcurrentBuild { get; set; }

    /// <summary>
    /// Gets or Sets Scm
    /// </summary>
    [DataMember(Name="scm", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "scm")]
    public NullSCM Scm { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class FreeStyleProject {\n");
      sb.Append("  Class: ").Append(Class).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Url: ").Append(Url).Append("\n");
      sb.Append("  Color: ").Append(Color).Append("\n");
      sb.Append("  Actions: ").Append(Actions).Append("\n");
      sb.Append("  Description: ").Append(Description).Append("\n");
      sb.Append("  DisplayName: ").Append(DisplayName).Append("\n");
      sb.Append("  DisplayNameOrNull: ").Append(DisplayNameOrNull).Append("\n");
      sb.Append("  FullDisplayName: ").Append(FullDisplayName).Append("\n");
      sb.Append("  FullName: ").Append(FullName).Append("\n");
      sb.Append("  Buildable: ").Append(Buildable).Append("\n");
      sb.Append("  Builds: ").Append(Builds).Append("\n");
      sb.Append("  FirstBuild: ").Append(FirstBuild).Append("\n");
      sb.Append("  HealthReport: ").Append(HealthReport).Append("\n");
      sb.Append("  InQueue: ").Append(InQueue).Append("\n");
      sb.Append("  KeepDependencies: ").Append(KeepDependencies).Append("\n");
      sb.Append("  LastBuild: ").Append(LastBuild).Append("\n");
      sb.Append("  LastCompletedBuild: ").Append(LastCompletedBuild).Append("\n");
      sb.Append("  LastFailedBuild: ").Append(LastFailedBuild).Append("\n");
      sb.Append("  LastStableBuild: ").Append(LastStableBuild).Append("\n");
      sb.Append("  LastSuccessfulBuild: ").Append(LastSuccessfulBuild).Append("\n");
      sb.Append("  LastUnstableBuild: ").Append(LastUnstableBuild).Append("\n");
      sb.Append("  LastUnsuccessfulBuild: ").Append(LastUnsuccessfulBuild).Append("\n");
      sb.Append("  NextBuildNumber: ").Append(NextBuildNumber).Append("\n");
      sb.Append("  QueueItem: ").Append(QueueItem).Append("\n");
      sb.Append("  ConcurrentBuild: ").Append(ConcurrentBuild).Append("\n");
      sb.Append("  Scm: ").Append(Scm).Append("\n");
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
