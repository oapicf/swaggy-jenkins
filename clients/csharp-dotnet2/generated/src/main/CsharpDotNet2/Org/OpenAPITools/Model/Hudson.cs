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
  public class Hudson {
    /// <summary>
    /// Gets or Sets Class
    /// </summary>
    [DataMember(Name="_class", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_class")]
    public string Class { get; set; }

    /// <summary>
    /// Gets or Sets AssignedLabels
    /// </summary>
    [DataMember(Name="assignedLabels", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "assignedLabels")]
    public List<HudsonassignedLabels> AssignedLabels { get; set; }

    /// <summary>
    /// Gets or Sets Mode
    /// </summary>
    [DataMember(Name="mode", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "mode")]
    public string Mode { get; set; }

    /// <summary>
    /// Gets or Sets NodeDescription
    /// </summary>
    [DataMember(Name="nodeDescription", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "nodeDescription")]
    public string NodeDescription { get; set; }

    /// <summary>
    /// Gets or Sets NodeName
    /// </summary>
    [DataMember(Name="nodeName", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "nodeName")]
    public string NodeName { get; set; }

    /// <summary>
    /// Gets or Sets NumExecutors
    /// </summary>
    [DataMember(Name="numExecutors", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "numExecutors")]
    public int? NumExecutors { get; set; }

    /// <summary>
    /// Gets or Sets Description
    /// </summary>
    [DataMember(Name="description", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "description")]
    public string Description { get; set; }

    /// <summary>
    /// Gets or Sets Jobs
    /// </summary>
    [DataMember(Name="jobs", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "jobs")]
    public List<FreeStyleProject> Jobs { get; set; }

    /// <summary>
    /// Gets or Sets PrimaryView
    /// </summary>
    [DataMember(Name="primaryView", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "primaryView")]
    public AllView PrimaryView { get; set; }

    /// <summary>
    /// Gets or Sets QuietingDown
    /// </summary>
    [DataMember(Name="quietingDown", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "quietingDown")]
    public bool? QuietingDown { get; set; }

    /// <summary>
    /// Gets or Sets SlaveAgentPort
    /// </summary>
    [DataMember(Name="slaveAgentPort", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "slaveAgentPort")]
    public int? SlaveAgentPort { get; set; }

    /// <summary>
    /// Gets or Sets UnlabeledLoad
    /// </summary>
    [DataMember(Name="unlabeledLoad", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "unlabeledLoad")]
    public UnlabeledLoadStatistics UnlabeledLoad { get; set; }

    /// <summary>
    /// Gets or Sets UseCrumbs
    /// </summary>
    [DataMember(Name="useCrumbs", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "useCrumbs")]
    public bool? UseCrumbs { get; set; }

    /// <summary>
    /// Gets or Sets UseSecurity
    /// </summary>
    [DataMember(Name="useSecurity", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "useSecurity")]
    public bool? UseSecurity { get; set; }

    /// <summary>
    /// Gets or Sets Views
    /// </summary>
    [DataMember(Name="views", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "views")]
    public List<AllView> Views { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Hudson {\n");
      sb.Append("  Class: ").Append(Class).Append("\n");
      sb.Append("  AssignedLabels: ").Append(AssignedLabels).Append("\n");
      sb.Append("  Mode: ").Append(Mode).Append("\n");
      sb.Append("  NodeDescription: ").Append(NodeDescription).Append("\n");
      sb.Append("  NodeName: ").Append(NodeName).Append("\n");
      sb.Append("  NumExecutors: ").Append(NumExecutors).Append("\n");
      sb.Append("  Description: ").Append(Description).Append("\n");
      sb.Append("  Jobs: ").Append(Jobs).Append("\n");
      sb.Append("  PrimaryView: ").Append(PrimaryView).Append("\n");
      sb.Append("  QuietingDown: ").Append(QuietingDown).Append("\n");
      sb.Append("  SlaveAgentPort: ").Append(SlaveAgentPort).Append("\n");
      sb.Append("  UnlabeledLoad: ").Append(UnlabeledLoad).Append("\n");
      sb.Append("  UseCrumbs: ").Append(UseCrumbs).Append("\n");
      sb.Append("  UseSecurity: ").Append(UseSecurity).Append("\n");
      sb.Append("  Views: ").Append(Views).Append("\n");
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
