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
  public class GithubOrganization {
    /// <summary>
    /// Gets or Sets Class
    /// </summary>
    [DataMember(Name="_class", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_class")]
    public string Class { get; set; }

    /// <summary>
    /// Gets or Sets Links
    /// </summary>
    [DataMember(Name="_links", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_links")]
    public GithubOrganizationlinks Links { get; set; }

    /// <summary>
    /// Gets or Sets JenkinsOrganizationPipeline
    /// </summary>
    [DataMember(Name="jenkinsOrganizationPipeline", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "jenkinsOrganizationPipeline")]
    public bool? JenkinsOrganizationPipeline { get; set; }

    /// <summary>
    /// Gets or Sets Name
    /// </summary>
    [DataMember(Name="name", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "name")]
    public string Name { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class GithubOrganization {\n");
      sb.Append("  Class: ").Append(Class).Append("\n");
      sb.Append("  Links: ").Append(Links).Append("\n");
      sb.Append("  JenkinsOrganizationPipeline: ").Append(JenkinsOrganizationPipeline).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
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
